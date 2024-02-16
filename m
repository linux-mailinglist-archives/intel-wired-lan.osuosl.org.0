Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C42857F8B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:41:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE7A841C17;
	Fri, 16 Feb 2024 14:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yMpnqaV6_S1K; Fri, 16 Feb 2024 14:41:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BABE441C19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708094472;
	bh=aIK8UZ07Y6eGak9AckiU3LONJ7X0E6vGk7IdGDoZ3kk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OyezaY+GwH+Npb0z/E7JKXBbzBJ7HMZ1AvzZd2q5BEnb2NgqCkzytW9Se6HtKsNYt
	 uY7fNpMqACKkr+H2kV7BxNUvRjYtNRBTpr6++Idc17IfuEnmYpzAHEazxmPimJafGt
	 ga6iuyUmrqE3JF8cMKeo/OoPppVE6iL2go4yO6KJ4GFbYMjjCUHkkHLoKicyNN8qCn
	 oWO7B5eLQrutQ6IO4mos+daXsz2qqaiqRC6rY5jWDFUk8PqwA7N1b6LKaNZk9y3L9N
	 knfu+0j4jEGiYF9uLB09WbMFt6zIyfzAc9AmHVld6m71ElyJbANUERsCpvDl+n8X5J
	 q6lPsAgZiTE9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BABE441C19;
	Fri, 16 Feb 2024 14:41:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9FB1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09131406FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N4YX12QIeAvt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 14:41:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 48130405DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48130405DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 48130405DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:41:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="6050297"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="6050297"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 06:41:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="935855918"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="935855918"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 06:41:07 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 06:41:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 06:41:07 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 06:41:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i9wz3sAYUBJeqdvzTJb9I1Dg/Z0O1mdsrUY5j9NZdJaLdp60F4i2l2y0Ac9o2FGsWUvYPzQOfKTCBAN7ZPcvUGQqtAKVxtxg5U503+CTGI4w3Z1M+Xz1NKQq9WvA6HJoQvfW+SO46qGApLo8KZfRQw+VdAEgFwfnQ6YL3u24+XHLbrGOSNtY7Ew15DDttKOZghZC3gyC/XsiYetYR+HwLQP1PzPBHeghQSe9JJh2IUZjLbLh8Z9Zr+U8QGI8DcuDaN/zhBO43STVRcfuz8cV/xiBN4K2Tp6bUxzIdFJfLQYN96YZpeMvqzNoP+IliICfDN2rvrOXUC59u44P+7dTMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aIK8UZ07Y6eGak9AckiU3LONJ7X0E6vGk7IdGDoZ3kk=;
 b=MSz0yLmP/YhSn0u47CPpmHJ4Y8fS44mbQSdGhJGoYqXo0fE+nchxJHj1OUlXmWGmXLi9tnz1P2RgrbmTIlJFkfu3F+lXKFBW1iLqGU9KQKoDgFGTew6ql8FMWTf+lcrHLOsp7sJwGd8rXhbBS2RC0uIYfsO1VnUcSA6fezQnnDPZ7N6Q5rD3OHGpOv9rePLVVlDUIPoJVdv1ybpCVsAcfVZahpciWMU+ph3XjzaCgKf/7F0/u+6HYr46mQi7201IOlbLEHpTc5MDt4M820Ol2lKrmRCMNKHsmlqWfJ0FGJqzbXrdXRQwMmRDWI5UHfBby1BM2AyQ+oL0tI97NknzTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH0PR11MB5220.namprd11.prod.outlook.com (2603:10b6:610:e3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 14:41:05 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Fri, 16 Feb 2024
 14:41:04 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ice: fix dpll periodic
 work data updates on PF reset
Thread-Index: AQHaW57lrsnExBnnIUmSnL3TBX//+bENFNGA
Date: Fri, 16 Feb 2024 14:41:04 +0000
Message-ID: <CYYPR11MB84293F4A4EF46029E4048851BD4C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
 <20240209212432.750653-3-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240209212432.750653-3-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH0PR11MB5220:EE_
x-ms-office365-filtering-correlation-id: dacc8343-968f-4088-dff1-08dc2efd4df0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4sMv7N3YGpqU+awqqS4MiHxn8rc3FGSultI/N2jBGuiHBORyzoRvFxH91Tvji3GYNX9VRRUFXVRnE40ETfYa9mlHDEbOEj9DRmagX8GqiPsLLPPFPMOmOZ9AsN+JfflIBX6T+FE1CA0V/svShEBNyMsx1HF6AZYIKvzi8jiEvzYLvxh5PDJu1HgjAsMwsv62ejzp0ug4ThMjeeMQXQTYs17HZ2rYVLuFW+v/TEgAJzfo50NKBb8EJpgO8/v/xWyd4cLHRZWwSAylD+z3MW4ddWGFSqJ7UUGkokiZFw6HtiTCYx6hL0kZrdKa/RK2xI1JD+flriAkk4bOyUjVmBuNrMJE1tfU5Y021k3LiCDu24iGmMiorVYfENKt7Dc1Ziy+N1URSf2Y1vGjHHcq/4VcvDK0ZC6ITwHBaL2x6FRSWhThM4FAvfin3OJzUAeQIO6Eb4hUFho+T+2Rsw3GfN+cW6qEyINXoAgRw0rQTurZRAog6ytW8xcjPuF8mU222lZTnbM5OkPD1IuvIBSyxHWfo/xDkkssZR3ZH7P/w4/DdXIN6NlmHzmU/P7Scpxa3rL6upwYodEFepxs6TPBRd3mnUO5qWwHiey+6DvZNFl7gRV8t2u6hEAuJpOJiJ2LJDev
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(39860400002)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(55236004)(478600001)(107886003)(41300700001)(53546011)(55016003)(2906002)(66556008)(5660300002)(76116006)(8676002)(15650500001)(64756008)(66446008)(66476007)(66946007)(52536014)(8936002)(4326008)(71200400001)(6506007)(7696005)(38070700009)(110136005)(54906003)(9686003)(316002)(26005)(83380400001)(38100700002)(86362001)(82960400001)(33656002)(122000001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y+DShVSE4IQwgxHg7yDqYBlpep/A6H57uCiYeNqLxaxfQlD64lnzIFpx6PVs?=
 =?us-ascii?Q?DGcA6w4tkTp0aASwtdhX+hpwizalgt4905Uu6TOf4wAPHA7+1B1mYkk/h3bU?=
 =?us-ascii?Q?DeZpQIJ6iI14VaeaH1Y0loIztTzh2xxV/vTljQl22IueMDL8saFz4ClG6ee1?=
 =?us-ascii?Q?fX3Jsuo/p5Dc298QXm3nnss5dKvOBYIqPXwt8q7tRLbPlv2uJy8BG9Jmkqvh?=
 =?us-ascii?Q?tFHW7IxuUKPlsz/H6tFz9prf34z8TpPyfdbYwfifbn9n03DOfw+eKxEGUkzh?=
 =?us-ascii?Q?8FCG8S5I+d9ceCwZrjjDUdVes103jTY9lSI9pRUE90xKlLWCR9ErBlA1oV/8?=
 =?us-ascii?Q?EkwVre8dwzOSQicnwo9YYZcbf2hCB8Vuu9w1NvVNEctxDtrH84WpgxA34mSC?=
 =?us-ascii?Q?DqZ6lQu9GIWfK+OexgmJZAmX7EnfhAcdPGO3W/TwMbf6E0y3Ekm+/J4GAjY4?=
 =?us-ascii?Q?yDdhABiNOngU0MXFVZu2GMoyHJzHZwL9Hrl/AhN7krHNxKPKrkr4Ji8/ew9I?=
 =?us-ascii?Q?92Cz7KSErDYegQk/AZ2LerG3V8/blwrJ4qATLCwmXGY8UplFOqKOOxxVVScn?=
 =?us-ascii?Q?3btUbiDDYmROyRV5efqN20dswq7lHhFVdPT+nWhQKVK5PmwzpI/0lOxvX+a6?=
 =?us-ascii?Q?7uKN1PusrgHwAptAWgdPsu1XTVvQSkIXM9YMuzcTjhZ8yNHHubYAqKFVgAse?=
 =?us-ascii?Q?Ujsmld+4+/OA/uJ8/BiNstoRdzXOpFBIuIzZ07ON0/vevKYBBBghlHfiyOff?=
 =?us-ascii?Q?yxstwl1r/ptsdWreYI2Ikk4yv+5ez/NKL6q0XGN8elrhG8iOXGW+mxvhxQ3u?=
 =?us-ascii?Q?IWtELEu/Sbu93TNeL/dIugHtBAFl6jCoYUwj4fKOP2il/ujWKumFXutu0wnB?=
 =?us-ascii?Q?exOHbOSYAti8jKw8V7CpxdC3MveKSYFZKPVdtHIS/XDlIYwQdyZXg7P+WJUD?=
 =?us-ascii?Q?wAFUkIloGH//7u7GjKzzsPtrsq+t1SVwVDM0Z1iYitQZiMyuqWZ6M1YTy4Gk?=
 =?us-ascii?Q?9X3nAAh1do2nIS1AIuZaXelcNtjcqON82izR7h4NMbU2KgUDO4x4rzHwE7nc?=
 =?us-ascii?Q?CQa21ODJXyTzbauy8a8UeCJ8x1213aHCv0gV6VtKnW0Hyb2Jk08A2rHpa8Pk?=
 =?us-ascii?Q?rwRadX8L1Aif1jCEY3bG9JjVr65o7+wASrjqpbpJqDIMWQ0pR2e6fJphyoF3?=
 =?us-ascii?Q?NRl2zcLw5OWnDR9mNVgP+e5k42qVA3S/yQn6XhYCIDhboTBmZFW+UmVWCBxu?=
 =?us-ascii?Q?5q78X7W7Qyap4aDgJKrAFPMauip4M5JfN9XZDoey3TnM5363ZFkUP1XHyV29?=
 =?us-ascii?Q?vG0F1iQSSmzGpWJLQTqwUcDRST/AL6m+Bv5WzDrQuMhhPdi+e3ijyl+iDF9y?=
 =?us-ascii?Q?HA0mB6ZrqWpoeZzBWUYv9CL86Z7oUa6S9MIqxnDDG2UMLOzpCEe0oUCnTz3D?=
 =?us-ascii?Q?2VA4k0opatP6nZ9hS+OCs3bid92bBHWL0aXSXYCeYI3qNSnSnj/v7g1dV4F5?=
 =?us-ascii?Q?SCLdxuR9XK9T5uP4u5iWwrW0p7hsh9KYvL0HdYxtxLmJzuGq4z8/NUBHj/XZ?=
 =?us-ascii?Q?5iMyGNJDUTAi+MpPNw+NwzvD5tX8Lvtqp2V9C0xE2uKPhUKVe6UyaBIGsLQV?=
 =?us-ascii?Q?qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dacc8343-968f-4088-dff1-08dc2efd4df0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 14:41:04.8943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KY/u/iHB/VP/+Arv5Va78ag/2G1PWIF9faBN7gPa1xgZh/WtSqtd3+Ecrw+D4uLN0qndhWnCSM88gQQjv7zvLy5RoJp484TA5c1CirVxQfCNM8yG4Ppgzz5h6qCaLMFw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5220
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708094469; x=1739630469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1byOSZTKpP29osAmWQXIUzcoD92aZ5/tegMG1s/Shqo=;
 b=HwyUVqJdPcimE65gXq8xqX4EhDOrllEvBDePOKc9Y+Jz9rcs0rLbt3z3
 jARQNVt+y/FRk9ARXLNNMZSzVMRt/DoqvwawSqrfbB2RuRkpCqjEwVv2X
 OvWrLLjfDViDShrtXiuIvGgTszaCJxapmHF+F2NGHtUigY1FwyEqxaflq
 b/xybDt9YQrWYnzlFKIfd7FgGhAZOGoMPv4be7Tcq12qQgZ1sXzwvRqHI
 uiB+CfbwJeTINgN+igy/VpXrfL6YBzv9QdXIW+y40aJLQ9JqlmlymnZcy
 DXzpSCx3c5VN6vUYzlBSjNBLkPTvdDwxSOq8dCc0GQRz+5L+d7tfuqNz2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HwyUVqJd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ice: fix dpll periodic
 work data updates on PF reset
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
Cc: "Bagnucki, Igor" <igor.bagnucki@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Saturday, February 10, 2024 2:55 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Bagnucki, Igor <igor.bagnucki@intel.com>; Kubalewski, Arkadiusz <arka=
diusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ice: fix dpll periodic =
work data updates on PF reset
>
> Do not allow dpll periodic work function to acquire data from firmware
> if PF reset is in progress. Acquiring data will cause dmesg errors as the
> firmware cannot respond or process the request properly during the reset
> time.
>
> Test by looping execution of below step until dmesg error appears:
> - perform PF reset
> $ echo 1 > /sys/class/net/<ice PF>/device/reset
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

