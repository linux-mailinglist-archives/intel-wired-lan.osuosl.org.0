Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FC55E789E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 12:46:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC83940966;
	Fri, 23 Sep 2022 10:46:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC83940966
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663930010;
	bh=dR86cNFzkYmHn4oJCTYbNT15O8xJt+Za2ann8H4X22M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1wY+5/y6zEUqwHCqhqtmHh+ZN++OcWK01MGiAP2DGLDw19MATJM2puWCZ3BBsEHB0
	 SIMBdiH72B9e5p8m7+J75Ff2E8P43faAngqfbAFC3+oIH0Rk+y6i2Umy5hO8XfBLo+
	 7weYNvqadkWkZaeUj3v7u657lxHMMmZqQDorelZA9gxNBbqkaFSPBd9Aar/Hyo9Kky
	 FGiv9B5Y8KebgOHq376jcEjStUzb8Db1q2P6G8YTSS85FFQu7rdj4+WjCzfjITZzjf
	 EBQe8mv+Ngv9Bvlzq2gQNLklodndLMLWBIk0E26IvY0gsPTp/ySPvfcrc+nxM8h7+x
	 hEWtfQsx9CScA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_AbLj0aUZYJ; Fri, 23 Sep 2022 10:46:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD4A140912;
	Fri, 23 Sep 2022 10:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD4A140912
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD2311BF378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3CB160881
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:46:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3CB160881
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DCYpMwGqpBDi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 10:46:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE9276059D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE9276059D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:46:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="287681825"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="287681825"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 03:46:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="745758217"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 23 Sep 2022 03:46:41 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 03:46:41 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 03:46:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 03:46:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 03:46:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JeZC/yXWshnk+a06jn0Z0RK0YwjameckQv8E0fGX1OtcNSgmoBv+fVH+cjeDWFHdxuHHItH6ixe9P/JM0n3Y8KzUx9xmPQ0C9/8Ljnc1B3PKfK0ao3MdmEJUMwbxrUPKavt5Cs4RIYSi9WLRDdUfFmwSzLzwcdt44HZCc2N4SiwywMZbYhA4q1I2sKjivn2Ug2tdOn6uU6cE8iqDOjVoJOrz51UR71JsCn77ygqNcnvGSqfsgHbYcr7tm5Ah8FZPuR6YcO7/UpHKlAsOMLejcr0wzjxyvrxgL1nC4g59sWb3I/ddVCXPMbNbRY3UUyEPLX9hP7wskW40c2oaZcjIhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sWP6BFr+1uQUwr2KRG42CXKBlTydQ/W6zKOAsGvTpik=;
 b=ldJB8zhobU7SqQpE8kb5Ld6zxOKhbBAkdS0ZliIrFKncTe+AusoQF2mv4Q+Yumtn8j26YdIOYpWcqwCsD+CjfbO0XFeRoCCpQ4gXwaeJFJy1bo6uOGswOXy/X9gXv0QNyrzgyZDrT5KLtsirD/8eKSjetrhd8v7JX4BixAChgRnv4tWo7SzS69usvmeBkj94w3xEKaWhUk/SwkZSyUSmu/M3OCX2vDRQ5088hR90inipig9fuK7pgzQfwFX4OQyZvJRBR+A2ZzeogNIRCAsicLX0nXb5Afj635NPHhNbjvbqKqW/+lJIBPhLUvu4ADIPzNXlbdX4ZvQ1vYSR4++Jug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 10:46:38 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d%7]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 10:46:38 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
Thread-Index: AQHYw3GEBMOX0YM29keonx9tcm/A763s6yVw
Date: Fri, 23 Sep 2022 10:46:38 +0000
Message-ID: <BYAPR11MB3367A7B2299CE71A0BB878C1FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
 <20220908105427.183225-2-michal.wilczynski@intel.com>
In-Reply-To: <20220908105427.183225-2-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: f2ab065e-9adc-45d6-652a-08da9d50e4b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LJW0jExVaEtSehZ85pVtfYM+z2gbkPYMTmTO5RC7dapMARWnwSoSnE420h3x1lWu9yr4mJ+D0wRXnSyxqtKeMNX/R8lPtwRaEfJrvxKvjrK/imrkLd9D45et4E9/zUkJqKX+aQk3P0Q0VldeuIajr8g0XwrcpvjY1DzdKenJl8wOlaVcnoUuiqc8kcf87rD9gy3pkzHClt1awvnEBLRohKD599T6pJGzHNfH+8KdQbZEbo0e7FrwEPIQXSw6zR32mrJ5HH60BIi3FdprjffSJ4x3sKhHVeZR2YWVL6XFSpR86IVgyr0H0uHywDV8tOScEndXaL/ivoq5N0Ruw8ufNmV+59EvISHAZtkAmEJwummoYkQP1JP+XjzHlwtdT4UwA8pUGLu3XNA0h9NShPY7lXMGv78v4QexmGGC8dhIBwm9SvuKWn/FBl/qXLELx3j7lZ8NkA25+VEf4E/Hu1UyVTb/EY0qDrZXjhx4Dw1sDDhkqesjVj34TGCgj61F1dqCjBIAxVrsuMuIN6WaftlB+jx7aV7EIgy5IytCidszG3CRCVxLSlbn+Fv4POKVWcJiqEXCaGX80Fp5ARxpxNc9ffIGJ6hFIfxBTq0IRI/U+kcE2bzYzJk+DkLQn5dwBNXHI2GZ6/EcMMU45XP3xw+g2AWHrtFiLpXr1+5hsNru4i62ZmsqaolM7zzodWwLn9Oh6z7BJpAeS3yAfV0BMelX/zgwO5ygNDnsdHDtp8u2muq6F7PIL7Icm+URc4M0UrO0Ct32Sxs6fiZS2dq5lQ1vFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199015)(26005)(110136005)(316002)(83380400001)(4326008)(107886003)(66446008)(8676002)(76116006)(66476007)(66556008)(64756008)(66946007)(53546011)(33656002)(9686003)(6506007)(7696005)(8936002)(52536014)(2906002)(86362001)(41300700001)(186003)(82960400001)(5660300002)(38100700002)(55016003)(122000001)(38070700005)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xUiRIlCaSW3OFt/q1XiwLzfc+MxvRzrcVJwws3CUMmbcjgju+9Ejcuaz5Z1n?=
 =?us-ascii?Q?a+qBUyCCwJ1HpmFTpUpjm5vPxDwLIuyEQUi7EUmjHpXg3NZUKw4Lx9iS9zAn?=
 =?us-ascii?Q?PatSiadhjE7ZQyHrIEIF5HuChY1ZAPfvZIy7gad/o0EKRQMCGcIn+8BIrWA3?=
 =?us-ascii?Q?O9OjJjSCk5gfYU5F05KkbrTGPgaaccuOP2vVqEqwMVhJ7GXwcUrPUHXcycIo?=
 =?us-ascii?Q?8DKmRbRyjUV1A7qhqRgMTqPLuZfz+ua+7tw0c3wUEQMiUCazhel+buVaQncM?=
 =?us-ascii?Q?D9LLDLzEImEl+sbfaK9OqzPd7oMYOawrNNxnlq1MfKEoIOmXGh4SgTw335Gx?=
 =?us-ascii?Q?AnP2N/C8XW+pYe14gLqfQcDvsCIY7/3F6EK33TuN4cU5n2TZc/PJeAeVXl0S?=
 =?us-ascii?Q?M0xtxcUeM47bEije+JMbHv1cxK6pAxzzuxZguOXKwlHBYsfgNBz7e17AAE+5?=
 =?us-ascii?Q?oVidZZXZ/1HlGOz6BGodUONQEe59BKTuLvOOEqj9pYtg5Fy0Uy9RynUDU472?=
 =?us-ascii?Q?BOIYZvq02IhmBD3nkHMhfv6CyMNk60LhXxy6UnQLqM9YdNalGDpvPRQvtR/Q?=
 =?us-ascii?Q?Yz38amCColozTewExt/n2mQi9oT/wayBgBVoFUB+RDzeuEyl451pH+uAI4Ql?=
 =?us-ascii?Q?GEinGLDzB14UBrqj0WaJKc7Bo9SlfZHxhAcwgzv69V97Gomq0RRCJQt+xF0W?=
 =?us-ascii?Q?i97Ip6TcVNMpBjmU6y/6s5O/3ZpqfLihBScX0Dz5u7sXbvBi15ZgmU6Ii+b4?=
 =?us-ascii?Q?Rh2mPETTU7GcD6a0kYkWNQLy9k2hIkt20MD75dZIWwVvIPe+A+udcd3J31fN?=
 =?us-ascii?Q?QudV339E6ZFZwqs3kjiZcgrHN10+xxO7l7A2cHOHgxUmzd2qURf0pjFmzkEg?=
 =?us-ascii?Q?2tz3hnWDa+SmbV754zfT6YrOrS8Q5tWM5aUdm8OfyKVIpIO6KJFwrzgg3ddm?=
 =?us-ascii?Q?IuQQTN1D4UuHhDfzKpDbpLmchNv8LCQGsBCk/0QDIQ2rSjopYRO7pgRPlppD?=
 =?us-ascii?Q?u2LGusAhifjlzXuyQ89N+xzMqcNPS7BTQw6vPZGfokrY2zhtF+JixMxIp8of?=
 =?us-ascii?Q?C0aB0V1py+XhDdFXY203XMuk5xnIkk6UBaGxhdfQMl+RkGl00M1gJmIaQWXg?=
 =?us-ascii?Q?3YWDkxd1MpXF2SsxYXWVdOOMQB4hJdQgY5nVwm97UEqHn9na7SC+ixXUAWUE?=
 =?us-ascii?Q?QFrCDgklN7RKTBmeav3jgpe409DJm/PkMBM6LHYi71btA/16VM3Kp2mNX4bf?=
 =?us-ascii?Q?wEmI9kMKjG1IZ3uU2svc+pARmnL7D+RCShWzbiUE10NoIuUTHmTeS/hdJjT0?=
 =?us-ascii?Q?pzhq3f0Os2bIgVIcvE2dSO8zAaTuNMd4h/2KjhkZ4wJeZoW3O9VNN+mQuJVm?=
 =?us-ascii?Q?FXdVijyzs/m+9RHnSlFpcYcFeMicJUwLrhUPdA4kVKFGCzVVS3YZu8u0PzVv?=
 =?us-ascii?Q?AjqeAVXH+tqtHSxLA9TRpj25mDsTMn33Sdficc8FAw7NYF8Ai4/PdfPqJz6E?=
 =?us-ascii?Q?Vw8iC5piFWWm7n2TX2Ncnp7hyKyJ4aWueX75xLeeEl+f82bW6CSVWPvDq3b3?=
 =?us-ascii?Q?YO/XYnlVcrZVMk7zP8wPJHuAQU8Mfwa7KfEdZ6Bq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ab065e-9adc-45d6-652a-08da9d50e4b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 10:46:38.6227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fc/tgQ7ICHnBboOtQ1Sy1P/r4m2tLn+JTeaULuURlicTGuwWggI3cnKWNzPV+BZLgZpXohAmiGzU4l6Usy87og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663930002; x=1695466002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mrg8CzdGb4ZAmvyiVhYVPawtowsdoQjZOwek3OzWp/I=;
 b=e+0YnjIK1m2JzCocc7SGB7mIX0B5UkllJ6QepOVvK7mN1JNT5Lz2I3BZ
 6PI43La5id8Fi1bT50PL0C43vbdrjk2A20znkQ5yahtBFFtaQ7DJdHjdz
 p3IutjrKpk5uX/5WJaHKOAiE7/xUPKhStGCQruq2aNfdqfHJa92uoi+W2
 XJlYfAmmyM/kTUnAkk4nDEeN895wTpEx4U1Rd3IN3lyxtbt0oTk939LWz
 4njWfoFNah0xJ6IJyRU4KhYZ2aaWMy4qvVOg9rUe5OdBwo28NWrVflnUn
 FIrZdDYZOIXph9NjKRbLlETbR9/XCSh4wy03912/FAy1jmEELwhZp0i9f
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e+0YnjIK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
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
Cc: "Raj, Victor" <victor.raj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Thursday, September 8, 2022 4:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
> topology
> 
> From: Raj Victor <victor.raj@intel.com>
> 
> There is a performance issue reported when the number of VSIs are not
> multiple of 8. This is caused due to the max children limitation per
> node(8) in 9 layer topology. The BW credits are shared evenly among the
> children by default. Assume one node has 8 children and the other has 1.
> The parent of these nodes share the BW credit equally among them.
> Apparently this causes a problem for the first node which has 8 children.
> The 9th VM get more BW credits than the first 8 VMs.
> 
> Example:
> 
> 1) With 8 VM's:
> for x in 0 1 2 3 4 5 6 7;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> 
> tx_queue_0_packets: 23283027
> tx_queue_1_packets: 23292289
> tx_queue_2_packets: 23276136
> tx_queue_3_packets: 23279828
> tx_queue_4_packets: 23279828
> tx_queue_5_packets: 23279333
> tx_queue_6_packets: 23277745
> tx_queue_7_packets: 23279950
> tx_queue_8_packets: 0
> 
> 2) With 9 VM's:
> for x in 0 1 2 3 4 5 6 7 8;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> 
> tx_queue_0_packets: 24163396
> tx_queue_1_packets: 24164623
> tx_queue_2_packets: 24163188
> tx_queue_3_packets: 24163701
> tx_queue_4_packets: 24163683
> tx_queue_5_packets: 24164668
> tx_queue_6_packets: 23327200
> tx_queue_7_packets: 24163853
> tx_queue_8_packets: 91101417
> 
> So on average queue 8 statistics show that 3.7 times more packets were send
> there than to the other queues.
> 
> The FW starting with version 3.20, has increased the max number of children
> per node by reducing the number of layers from 9 to 5. Reflect this on driver
> side.
> 
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 199 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 243 insertions(+), 2 deletions(-)
> 

We are still observing the performance issue. Its been observed that the packets haven't been spreaded in balance across the processes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
