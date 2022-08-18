Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2A6598B15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Aug 2022 20:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFA7F83E44;
	Thu, 18 Aug 2022 18:28:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFA7F83E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660847290;
	bh=SiiAn4ROpQLNx7oQhx5HAU+lrXGWGY1SJjTGHB/sLSA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MG/Lt0YDnsf66El8IwyJ4z7ktWH8bknAZWPSX06r6AX/7hlslkHPD7+mO5U/Wy5w8
	 a9pF0/gLUCihR1PRlxY7PwCZKG385Ga+G26sPimnvNQLBowxcrhKPyqXFMlPe8bIAb
	 o2AT7I1atWF8NDe9uHbr672Ko8V1g0oowhDYTWMuwJJwTMp1/zVeeCo+5h4iLsIERg
	 hjVhwkCTtiSFUEEukRuVBGNDXifSxKc8cBBxYQ1pd5ZP7TGkiXzno/FR+p7UtigShZ
	 l6/kl3zXUP+vtMqycqjnbSQPS/tWM/z7GQjUhYqY9tMs9ixoMQI0NA2uHToE16HIH7
	 P+MyOB6UjHyzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJmE9mLt7pdr; Thu, 18 Aug 2022 18:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95C8083E3F;
	Thu, 18 Aug 2022 18:28:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95C8083E3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB1D21BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 18:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FB6840528
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 18:28:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FB6840528
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKaZAd7uoL-4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Aug 2022 18:28:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F0C440154
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F0C440154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 18:28:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="292837929"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="292837929"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 11:28:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="636939447"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 18 Aug 2022 11:28:01 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 11:28:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 11:28:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 18 Aug 2022 11:28:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 18 Aug 2022 11:27:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f/kWfB4KMfrGYm0+fWjSjcjH2JJic8l4eaC9MXw6UrRECCRb6yZZ+H0dmNN6p6DKj2qgJZkQcYopPB+M5B/PKcvD/rEuLtXmg/JNF2XecGUGlR0Y1FwiuALOqPOuu8BT+Knpc9BewytYiIlj0WFpbF7atVQJSQExGQ2c0GFwGdt3Swb390cIMfvfHZvGB2PK7qotHeQ7NFgxtW+ANe9YKEZ899yZuTxeQIpKRgb2OtoN3VmuCqvnY6zWWNt+JRXpxi5LmgVUQo2GyuRZHy2d5Rfo1f0ZSiHREnLJuz2EOCQWZfwtJiIOpO+nUxm3vOI/fHHUYq5LIdMIFuXPfVPtfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qwduWsyTytvFjRWPd21AKYkTLfIeM3ZcC4VtCLv42+o=;
 b=Sol/kKEekTIjkH7KSMziqkL/E8F3ZEJhxRRJTkYW4iYM2lUmWWBVOmQ0hrXdcQHcKTJ5ykAowPANVOI2xavOpl6Fdyx2simP47nHflLBA8Vv8mUXLsPmELMGEJhNNQ6mu3m8haCC8ZceRbeedZrJCoNeuJ6R+WHVMz91jz/oYQHH4DCNPf6S0hc2cCkPSYNhUdYebtaBBCjpu+crqiB5g5lML8e+1mAduIAwflvwraPE38n5nIFwAFRhlrkBSAyZo/ON5u7v1OKXC7P2H0tQeuyMxcsdpd0TN7Xualpn8OJGKYlquSeS7F0DgG7w1FDFi15WsvyLG0veT5TPVdXDAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Thu, 18 Aug
 2022 18:27:57 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::c8fd:adf9:fbdd:e1d0]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::c8fd:adf9:fbdd:e1d0%9]) with mapi id 15.20.5525.019; Thu, 18 Aug 2022
 18:27:57 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net 1/2] ice: xsk: prohibit usage
 of non-balanced queue id
Thread-Index: AQHYra9gGW+OF2YbJk+QJS0BtYB4M621A4UQ
Date: Thu, 18 Aug 2022 18:27:57 +0000
Message-ID: <PH0PR11MB5144894621EE380463246C42E26D9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20220811182149.145358-1-maciej.fijalkowski@intel.com>
 <20220811182149.145358-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20220811182149.145358-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c61c6cd3-f4ac-4cbc-4ef4-08da81475fbf
x-ms-traffictypediagnostic: CY5PR11MB6139:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EEiofsfqtt8v2CjLuhfVRf5IqVqvJezUZKqa/QIUciVWYXqTEF49mM8ylEi1niVHqNciCkUOhACTGLxyb7toalDXGzu4IjCvw7DBwHGY6Y+vN1EmcBuPc2FGT5uLWUKcrKj3xImXK9fwrmCn+jMug4U4EpTWXI5gRbvcAgkiWGZKwwooGxBfkWmyhaOtqn6HSSzxYHKNf7qIWR5Xj0BHBrhil1ruZAsQ0xUQmRod0FMhSuj3hyLlRXymqd7KTWtNOLVoLGH9wqAFlVa2qVMWsnFOhSYNm+vZPNw7/MSrys7edMfBs4vc5JnLnGLD23d2D9Gb6hDAxf2tuAgU+YPgklDr/N7eehR8JxnBrEqjH/yly7w8k1l87z3ijyx9uLb5zRJCzbN98+QiANeSA8kZoTc5a/KnPxhhFqEtrb7brFiNos4X7jLgs49780YbHGe8DWL3Hac4MeJHI71Qi7qJ9wsMT3F7l0AD3ogNcnwqCgFFaU2ZcADzRXT/dDMJFDqSVza63M6Taf7A/qYUdu0pi/qm3PfJXCoQSDT4rSAXE0kXchwKctrqa6duVjuwQdqmFWFyy94Vg/OJJlw1YJItc0oKW/EdlFHl9WRT05lu1HlFoVUCdVojWv6E/wh25cSJluITphWYmSqENoMo2008EaUy3h3KXSl21dTsRvxF+GZJM8y/lMSMP24XC54eH38HiAVAHKyz9htAwh7owg5EaTxxRofvK1zWaCOYAasWJ3XcWp+QWIy+V1QR44JajATU7k/CkWFpqCInq4YMJ38qTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(39860400002)(346002)(136003)(366004)(2906002)(76116006)(71200400001)(4326008)(33656002)(8936002)(6506007)(66556008)(52536014)(82960400001)(64756008)(83380400001)(5660300002)(8676002)(66946007)(66476007)(66446008)(186003)(55016003)(478600001)(110136005)(53546011)(107886003)(38100700002)(54906003)(41300700001)(45080400002)(86362001)(7696005)(38070700005)(9686003)(122000001)(26005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZgZZVp07g+eV/BUbPqrJrbD0T53feB9ldYCO/OR2X85ibLUdF6PjUO2IEJlo?=
 =?us-ascii?Q?gRuTt+T3yxh5+rfFX1RrUp9W2EPcaSGQWRstEmL0niuMVnKZWaLj9fq1kN4k?=
 =?us-ascii?Q?zdqFuhFFfnHvC7Yx5Nyzap/yOBdoAr3zWcUYqhu9RE8wmIBUWxcOKB5ePoTN?=
 =?us-ascii?Q?RZxI3vYhb6YmzfVKU/iBIAKhgpmLRKA2fOYnonMh6C3HI9Ud4jzFXPAlAqbm?=
 =?us-ascii?Q?FQ7ptx54aQUMFQuk1tir9KJaSK7Gq4IIyu66p/NtKZqWt/eng6w6sLtbbMvc?=
 =?us-ascii?Q?Veil7jh0iJUiM/RUCW0XpGjix4eydkHONNP0e0OYJa/uQCsqbFz6AnpQAbCy?=
 =?us-ascii?Q?NEcoAwObwuhtFO/5OE4FhbgSAHPjHa3Crjs73LbV4s6osEIio+EYmXwzs9d8?=
 =?us-ascii?Q?smvp55VI4lxs/UXgQ3uELbYOyjgxN8/3GGIZpQ4zB1hLMWKw77jXDKVcTFi1?=
 =?us-ascii?Q?9vPNIS5D85AQAn0ApQvPawmhUJHh2T8wJ7VfWEM+IDdYUr9o+4vMMdpx9fy8?=
 =?us-ascii?Q?DEsarCjgJq58c97L7h1cyFEiJfM0z7rvhDkM6cA7xMTT7cRNDHMrcYCnTAxb?=
 =?us-ascii?Q?gMG7vxJwV/CAXBem+vV49kxzHt2DElMYlKaXK5qSI1l/hcWNsKszGff8Zg4a?=
 =?us-ascii?Q?5DzjVSW8b6jiOff2BzRXUyU9yyr+DkS76YoZUk2zvHFj5cHu6arLZv1Eixda?=
 =?us-ascii?Q?G7Ab0I4CexD5E3Ou6xAYT8wDe+3eHctGEJlPxa/eUg6vyJVNBn/3ejD0yidM?=
 =?us-ascii?Q?lnZeJFok63mxB8h6KO6Fk8rUP361sJJvejdeMhGBg+Tecbcrt2oVIPVauiIH?=
 =?us-ascii?Q?PeSevAUfUpQsueTQ+VxTcHihQL5rgptQqq93ZeqBVRuLGWY0mm4A+0sLH6XF?=
 =?us-ascii?Q?VxuMQOyBPyoDk0RNohoYNZVeA3aDfomg8mDxsiGlrGNC28rONqniMOetyHLl?=
 =?us-ascii?Q?Ca2GzgLM2Fr7FYqqPTUwnf96tO4xBhKXUvalmr5u+90nst01rhlG3eVFIvkF?=
 =?us-ascii?Q?9JjpARqtWsAyvtrwFmrKlGOjILLTOzwNo+P+dxomvVVS270NTec1E8uH0Rgu?=
 =?us-ascii?Q?WTSDv0qVRL54PNK9vjkygPJwMVWTb2OaqZ6j5q4IBAUKw1mpV8hjqI+vd3Pe?=
 =?us-ascii?Q?yCSRE0epXzAvWCQBVND/cMpbMqXBPU2jk+DQsi0OwBYKa5/ZkzsnqrDL9NIf?=
 =?us-ascii?Q?WzL87olbao0B5ZQYmPeycEfNYbL6q+hWw5LAHRfD+ulZkdCCi3s9EnSyZbHw?=
 =?us-ascii?Q?bc5DPz5C9quToTqIdpBJAL9qWJ7nPHl3tXBa9u0PTLNrD5hnYjdNQxMo2Xz3?=
 =?us-ascii?Q?fs6eyfIlVEmHpdsAMB5JbkDp5Q8IG/8OTBCh5fCAifUVEbSqhRKBJlkTjeLE?=
 =?us-ascii?Q?t3qQeM0Khydz7xmxCNVbFNRrUCkk/UrA5GL2Hi42CzEGaBtTYlMCj9lNeuMp?=
 =?us-ascii?Q?/1IBouGA3B55BjDEHKG9k+9xMgmluwUKCs7jwGKQSHyC9aqUSkhOKVyC5o7M?=
 =?us-ascii?Q?aQgDheYFLe7aPF/y7tzYy2XH0DEc5Gn0I7+cMjtHKCmdZDrUWwlch7jQjIF9?=
 =?us-ascii?Q?CSJR/D9sopepHmIXNJ7q4H5683JH9WfEx/sn6mV9iVQUUSV2WRqLEjmgM8qt?=
 =?us-ascii?Q?ww=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c61c6cd3-f4ac-4cbc-4ef4-08da81475fbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2022 18:27:57.4912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SiwqD7P/gJfURMcCubaxVEWNBJD9BAbvaVky4rEtyZ3IJwOUz8thHE1pozb70rkvWiFRIvh5pDR3QshDXEQSRZcGz0n/q2ccMrEDJtoh+cY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6139
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660847283; x=1692383283;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HHihIwuqvM3716HzUPBByheX/G17NY/T3c45HXytjiI=;
 b=G8/PTU/b85SUFGXTRMZNtKn4k8ICqIhiQrz0SuMVDqnEfuH5FVfminds
 CkRpwgs6BaI6Ksm9d8KnMpuPAu2Xo5yqOyZJi2esqLhvyfSko+WeNe0kk
 iYIYoRhrEDdEbeiJh4aXC97jXyYKQtnFGZJNwnyH4dI8CJBNeZWwOzoZH
 D9OHmnhJd86Ed93dVZgPH/z5GZnCBUJlyCv09ML/Crczu4FOfuQtccfHk
 Y0q7C29h66cfy/QVKgw5uFnQ6GU3OmqUZyDASwQX+zn9cS251cbpF6fIA
 beb+jrmIVVY+NXh2oAG3VC/OZ2bWt81CjWJaKv56zc3jHnxQaLJzBVpbE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G8/PTU/b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net 1/2] ice: xsk: prohibit
 usage of non-balanced queue id
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
Cc: "alasdair.mcwilliam@outlook.com" <alasdair.mcwilliam@outlook.com>,
 "xdp-newbies@vger.kernel.org" <xdp-newbies@vger.kernel.org>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej
> Fijalkowski
> Sent: Thursday, August 11, 2022 11:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: alasdair.mcwilliam@outlook.com; xdp-newbies@vger.kernel.org; Karlsson,
> Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net 1/2] ice: xsk: prohibit usage of non-
> balanced queue id
> 
> Fix the following scenario:
> 1. ethtool -L $IFACE rx 8 tx 96
> 2. xdpsock -q 10 -t -z
> 
> Above refers to a case where user would like to attach XSK socket in txonly mode
> at a queue id that does not have a corresponding Rx queue.
> At this moment ice's XSK logic is tightly bound to act on a "queue pair", e.g. both
> Tx and Rx queues at a given queue id are disabled/enabled and both of them will
> get XSK pool assigned, which is broken for the presented queue configuration.
> This results in the splat included at the bottom, which is basically an OOB access
> to Rx ring array.
> 
> To fix this, allow using the ids only in scope of "combined" queues reported by
> ethtool. However, logic should be rewritten to allow such configurations later on,
> which would end up as a complete rewrite of the control path, so let us go with this
> temporary fix.
> 
> [420160.558008] BUG: kernel NULL pointer dereference, address:
> 0000000000000082 [420160.566359] #PF: supervisor read access in kernel mode
> [420160.572657] #PF: error_code(0x0000) - not-present page [420160.579002]
> PGD 0 P4D 0 [420160.582756] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [420160.588396] CPU: 10 PID: 21232 Comm: xdpsock Tainted: G           OE
> 5.19.0-rc7+ #10
> [420160.597893] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS
> SE5C620.86B.02.01.0008.031920191559 03/19/2019 [420160.609894] RIP:
> 0010:ice_xsk_pool_setup+0x44/0x7d0 [ice] [420160.616968] Code: f3 48 83 ec 40
> 48 8b 4f 20 48 8b 3f 65 48 8b 04 25 28 00 00 00 48 89 44 24 38 31 c0 48 8d 04 ed
> 00 00 00 00 48 01 c1 48 8b 11 <0f> b7 92 82 00 00 00 48 85 d2 0f 84 2d 75 00 00
> 48 8d 72 ff 48 85 [420160.639421] RSP: 0018:ffffc9002d2afd48 EFLAGS:
> 00010282 [420160.646650] RAX: 0000000000000050 RBX: ffff88811d8bdd00 RCX:
> ffff888112c14ff8 [420160.655893] RDX: 0000000000000000 RSI: ffff88811d8bdd00
> RDI: ffff888109861000 [420160.665166] RBP: 000000000000000a R08:
> 000000000000000a R09: 0000000000000000 [420160.674493] R10:
> 000000000000889f R11: 0000000000000000 R12: 000000000000000a
> [420160.683833] R13: 000000000000000a R14: 0000000000000000 R15:
> ffff888117611828 [420160.693211] FS:  00007fa869fc1f80(0000)
> GS:ffff8897e0880000(0000) knlGS:0000000000000000 [420160.703645] CS:  0010
> DS: 0000 ES: 0000 CR0: 0000000080050033 [420160.711783] CR2:
> 0000000000000082 CR3: 00000001d076c001 CR4: 00000000007706e0
> [420160.721399] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000 [420160.731045] DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400 [420160.740707] PKRU: 55555554
> [420160.745960] Call Trace:
> [420160.750962]  <TASK>
> [420160.755597]  ? kmalloc_large_node+0x79/0x90 [420160.762703]  ?
> __kmalloc_node+0x3f5/0x4b0 [420160.769341]  xp_assign_dev+0xfd/0x210
> [420160.775661]  ? shmem_file_read_iter+0x29a/0x420 [420160.782896]
> xsk_bind+0x152/0x490 [420160.788943]  __sys_bind+0xd0/0x100
> [420160.795097]  ? exit_to_user_mode_prepare+0x20/0x120
> [420160.802801]  __x64_sys_bind+0x16/0x20 [420160.809298]
> do_syscall_64+0x38/0x90 [420160.815741]
> entry_SYSCALL_64_after_hwframe+0x63/0xcd
> [420160.823731] RIP: 0033:0x7fa86a0dd2fb [420160.830264] Code: c3 66 0f 1f 44
> 00 00 48 8b 15 69 8b 0c 00 f7 d8 64 89 02 b8 ff ff ff ff eb bc 0f 1f 44 00 00 f3 0f 1e
> fa b8 31 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 3d 8b 0c 00 f7 d8 64
> 89 01 48 [420160.855410] RSP: 002b:00007ffc1146f618 EFLAGS: 00000246
> ORIG_RAX: 0000000000000031 [420160.866366] RAX: ffffffffffffffda RBX:
> 0000000000000000 RCX: 00007fa86a0dd2fb [420160.876957] RDX:
> 0000000000000010 RSI: 00007ffc1146f680 RDI: 0000000000000003
> [420160.887604] RBP: 000055d7113a0520 R08: 00007fa868fb8000 R09:
> 0000000080000000 [420160.898293] R10: 0000000000008001 R11:
> 0000000000000246 R12: 000055d7113a04e0 [420160.909038] R13:
> 000055d7113a0320 R14: 000000000000000a R15: 0000000000000000
> [420160.919817]  </TASK> [420160.925659] Modules linked in: ice(OE) af_packet
> binfmt_misc nls_iso8859_1 ipmi_ssif intel_rapl_msr intel_rapl_common
> x86_pkg_temp_thermal intel_powerclamp mei_me coretemp ioatdma mei ipmi_si
> wmi ipmi_msghandler acpi_pad acpi_power_meter ip_tables x_tables autofs4
> ixgbe i40e crct10dif_pclmul crc32_pclmul ghash_clmulni_intel aesni_intel
> crypto_simd cryptd ahci mdio dca libahci lpc_ich [last unloaded: ice]
> [420160.977576] CR2: 0000000000000082 [420160.985037] ---[ end trace
> 0000000000000000 ]--- [420161.097724] RIP:
> 0010:ice_xsk_pool_setup+0x44/0x7d0 [ice] [420161.107341] Code: f3 48 83 ec 40
> 48 8b 4f 20 48 8b 3f 65 48 8b 04 25 28 00 00 00 48 89 44 24 38 31 c0 48 8d 04 ed
> 00 00 00 00 48 01 c1 48 8b 11 <0f> b7 92 82 00 00 00 48 85 d2 0f 84 2d 75 00 00
> 48 8d 72 ff 48 85 [420161.134741] RSP: 0018:ffffc9002d2afd48 EFLAGS:
> 00010282 [420161.144274] RAX: 0000000000000050 RBX: ffff88811d8bdd00 RCX:
> ffff888112c14ff8 [420161.155690] RDX: 0000000000000000 RSI: ffff88811d8bdd00
> RDI: ffff888109861000 [420161.168088] RBP: 000000000000000a R08:
> 000000000000000a R09: 0000000000000000 [420161.179295] R10:
> 000000000000889f R11: 0000000000000000 R12: 000000000000000a
> [420161.190420] R13: 000000000000000a R14: 0000000000000000 R15:
> ffff888117611828 [420161.201505] FS:  00007fa869fc1f80(0000)
> GS:ffff8897e0880000(0000) knlGS:0000000000000000 [420161.213628] CS:  0010
> DS: 0000 ES: 0000 CR0: 0000000080050033 [420161.223413] CR2:
> 0000000000000082 CR3: 00000001d076c001 CR4: 00000000007706e0
> [420161.234653] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000 [420161.245893] DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400 [420161.257052] PKRU: 55555554
> 
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
