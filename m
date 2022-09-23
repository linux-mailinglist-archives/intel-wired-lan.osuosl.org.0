Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5499A5E7285
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 05:43:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 755CA83E02;
	Fri, 23 Sep 2022 03:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 755CA83E02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663904606;
	bh=bCn8luoLCzMULFT4e1T3CQp8PHQfKJ8mrou/Fnj/T+g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xs4btD4t/YNYMpuwL2vyfZlrlDJaJb2GKz9fFzp6RC39RacTqNRsFVow36ZjzSjSY
	 KyNyERHA2VxPvqrnr/PoL/fhB8OgJMXq4hNkZ2Lmh3EAuNoB9Fi7O4X5BiGwq4a+D5
	 u6fYNlf4PWJZAL5y1vr6NySyfCGsQKvrPsIyadq41cFn2qwW6bUEY2bVRJRlStZH3M
	 pNGEWnJ5GOQV+50uq1a3bdMj827a6QUpupdGDfRDHQDLEO4m/6upGPBWBfRoN2vfXv
	 ifnJSVtdmZFJuaMOMgEkhD07TgBBqoStkU+Cxnt76BUdETSz2D6NrtNyvsG1PA1BBv
	 3zq3vn3an1IJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TnSTg8yr2EHl; Fri, 23 Sep 2022 03:43:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0DB4837C9;
	Fri, 23 Sep 2022 03:43:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0DB4837C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4740A1C1135
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 03:43:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DC8C60C21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 03:43:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC8C60C21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yVsX2maMNXJW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 03:43:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 317DA60C1C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 317DA60C1C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 03:43:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280225044"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="280225044"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 20:43:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="682508164"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 22 Sep 2022 20:43:18 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 20:43:18 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 20:43:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 20:43:17 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 20:43:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=czTS6iiCBmozFea0guZ65kmXmpA01aX0oWgkDom6Pz36ypcCnU+qoqoivSdopzz5VreiGY2Z+jIvB0uysmaHR54uw1V80r8b68Wkfw+c5+X73pzgVeXBXgtKFF1prHL2tLoICu3b58xgi7aRPCBl5NkQTr8R0YakqyTeK4xj3UGkeec5vQYVgr4LyYxopg+SpbLJqbz9n3QnwXZl/rne9ePAi1voU99My98Yt1BWYdddLZ/I/lbzS3D9hsi14lcdS0J01fWvoqcZVHnFe7hNiSSdSs0I26ADapVQKM8k1im0AHACgAjVPtTVME+LaUIDrHTAqW/7spN8KWmOa5IBFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iiwGKVy3AjxqCE/yY0kfDFQbtayoO7uWN/VFHpqjNdo=;
 b=jKAY0y5N/e9NhrvDsWe61Dln5QUi5Xp5WuER5YJpDxb0vilzFsYaI/IF38b0uyhZBggT0mb44L9fIgINXlgxxVZOiWWENy1I4tcL/jrjUnN9jo9WEz3cYe8f0wH3JAydXTGiZ3G6t4gkfc7cqzjj4OjkfYTx59mzjUfoa3dH2gPRKxewX86fYgq3ltpmKhku8A6TCJwnKnp35q5bYHzn1SqKGNSxFQujv8xmqKIopDY2xZmE8Gj8asZr6OkZqWcuO0QvgHU+FBnpGlBYasL2VnYa2I5FlEj1IG0DiPphT8IYp0FVknJ1+6UxZWamBi+l6Spta6mJN+x6nO3ViSB6Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SA0PR11MB4640.namprd11.prod.outlook.com (2603:10b6:806:9b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 03:43:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d%7]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 03:43:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 2/5] ice: Adjust the
 VSI/Aggregator layers
Thread-Index: AQHYw3GGjX2XQueLy0Sky5zqbDqWia3sdhZg
Date: Fri, 23 Sep 2022 03:43:10 +0000
Message-ID: <BYAPR11MB3367350D814C326ED1DED296FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
 <20220908105427.183225-3-michal.wilczynski@intel.com>
In-Reply-To: <20220908105427.183225-3-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SA0PR11MB4640:EE_
x-ms-office365-filtering-correlation-id: 88a02971-970d-4c2d-a459-08da9d15bc34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AU1WuToi5ZwN4ozqRa0j10TR2ZyfKTOAch4vYysbecOScyfoDUcpt+5A1ghCk+I4Jt/mvD8y2koOzNWz/wW4rb6Hvuxu/2859PLzLPGBiAn6UHeL6cH4XO45acqPfj7c6cgFldmG8z+VoLahGiJg/XvCJXqKNleLs81OYFahbg+JKt6/TLZdDzcGs91wXQhcTfJcV5K6VjKu8bNsUQRYVNnXzlu41MQ6KYXBplttdaY4fREcCQP5/Uis+Q4NGVNTbsJv+JU3C9IiAfldyDT3vtyLHwNLFt/xWUWngfzHQ53P5P0WUZHGYCWoK7HRITeHnsSL+U2MkO9Uec4tho1rTMzEHSowPQnX32YW2jCizo0UDrLcPXA1ugAJNHZyayXlL0XKa57wldG30YD2MDClHVbwUDidrdDLJpm6+ddyzHak55pi6MDsgORqIzd6kZIcq+gw9+7brSB6jblqKulLPvdrkwfnUpTU+z1bh2XZq5tXiQBy2S/XApph8ZNH9CnE6AOE4SJ6Jqq6ELn61cVUnM5MTqvNQ4c8wrx+N7M3hA95/cGT90A6R816tm2P6KBs7lnqPWOGarCJwrNeRm2cDl/yCkPNI3ypFpbUkIZOyzZCIC//Paqre70F/6x+1TMjoJUPkDpgy6rLC7q3dwE55injMNM0rfsD4HsPPrhtCnrWeNptj4iAh6mGI63sAnAwcFxX6Lh1jy4D8a6J4iMlFQdpzzlW9rDpn5EnAOsDXjjL3nkEZHhlVBnb2EXWoNDothsPn1sWbSefpAGR+PhIvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199015)(38100700002)(5660300002)(71200400001)(4744005)(82960400001)(478600001)(4326008)(52536014)(2906002)(107886003)(55016003)(83380400001)(41300700001)(8676002)(64756008)(26005)(110136005)(66476007)(6506007)(7696005)(66446008)(53546011)(66556008)(33656002)(66946007)(86362001)(38070700005)(122000001)(8936002)(186003)(316002)(76116006)(55236004)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oCwpmHuio805mghECtJt6u3e3dVMZR3O6U19mRBNrCrr9xKdBcJxxKdboNpH?=
 =?us-ascii?Q?I42CPOwkhu//thdNTFVee06zU7v4y8Qom8QLEp8aoR0pm1YfyZaEZdKXZIUF?=
 =?us-ascii?Q?hdQL3sQwQ51PKr7IuluhxSiy+06XnLbjZpjwZ+DN3tJJeNghf8OIv5Y0Lrve?=
 =?us-ascii?Q?gfJ43y30YYgQyX9xTiWQuBFLEmq+xKtmwHhAErWNBBIdxh5mmZXCXnIyVH9P?=
 =?us-ascii?Q?cL138OHE3h/sGLryppso+E9kyFNNQhrl4z31cNX8X/w8BViCqJGbXhbrXbBM?=
 =?us-ascii?Q?1+ZxTtNtjLi1Szj4uS5vo9IwzYs5LfjYoCyBCXDf9Rt4X9nWrqFWH3dKWVlx?=
 =?us-ascii?Q?jvasWq3RRUBlNRH+jVZa4bdJJ3TH8ZBWHWvKKdpVH4aqxV/lq/7L0i9RUpVW?=
 =?us-ascii?Q?3TaYeofKm4bPLedG3aEKq5HObe/LpOiO7UFAdjToGkMuFjhoLcObbRj56AVp?=
 =?us-ascii?Q?TxARjdwab86f6wG6s2dYt2LIXQpW2mgAl4+hJ/VGni8EIIBlYg/OCrv4/ZCg?=
 =?us-ascii?Q?MVZj7OThBbODntKp5tkT0RpaIac+l4RDNB0yr4CRYmBdYMAuDurPRxMuNKhl?=
 =?us-ascii?Q?vjE2H1tbqANPdr74hZc92QgG7CiS4UOkkcOcU5FUqISDXTWHTcHJg2ODUwaV?=
 =?us-ascii?Q?c8rJUzoqDVRPPYbWuy3N+hOszJkGpzyj6e8lit8Y/m6MPXqGdmhB2sg/5HHC?=
 =?us-ascii?Q?xBTHIgMdd5XwUCFu+2EAcUOh9Qd+yB3LLss4SpeLTFOk4GKbfc2J6VMM4n2/?=
 =?us-ascii?Q?2ZnkQMPNdfJiGiYanuCJyTlgZVLzuZ7uogY0s0c02K+lsa0cXvhT0+yQ/wpL?=
 =?us-ascii?Q?dYagzr5mEO3WM7Tyi7kkeK8RDd4YTr4ri/F8nnmixxVWaTR8p7MsblEMPAwh?=
 =?us-ascii?Q?8Ey8DYnib9PO4QEBHeoATJ8qHW3E5qhSaCCDduM7YC1jKqusYTOLlQZcIgDn?=
 =?us-ascii?Q?LsLS8DcbRBYMdOk7C0DC3OvppLb5oAjnO5AaJ+RY6WliosVESRCMSi//tW1R?=
 =?us-ascii?Q?N7cJHCCUzFWR6BBNKfkBp78+CKLs5K9aN7XJjuyf9qbFQ974xJwfeZDS2VkJ?=
 =?us-ascii?Q?VQbTxzWnG007CpET/emVW7n/pUa5uFBSvOmp6u4ZLISxXr5mSloJ9OhhdAlm?=
 =?us-ascii?Q?9qBFMdrFM/UQwRW+7fsurpSCRkAkfeDnsWgKcD9gSuIcUBEIZZ+Ui5D7BB1X?=
 =?us-ascii?Q?nWIDFO8BGT8TpNj4XALfE6QqeUcW4p6hrJsFrZ0wh0zEcBsJGRtoVKj0RSCX?=
 =?us-ascii?Q?d+z+zeV+0BJZX4MG7Jzms7C/mnQeH2Hqbe1kBUTn+2ZVBZwdarDhTmU2IYmi?=
 =?us-ascii?Q?BPMQ//quk4ygpQHQnapoQ8fTyJJAcMbguCkuwaYGBoIoZYsbXdnd6ZZBsGF5?=
 =?us-ascii?Q?CC87awKkPPHlomm2nq/vnKx2J9Zf5cNwotbaFnjj7w5O5eCd89jtTI6EHfzD?=
 =?us-ascii?Q?mIu8MvwZ74HrvhCNv+00MAtmm1/eSOIR/xC0Gd8JCibox7fDPC6QEo0pti+P?=
 =?us-ascii?Q?U/zosG/zwj0PUSHlyF5H0OiV/DEZyk6HFD0/okOjnRa+2CZGhycj/hWu0GYz?=
 =?us-ascii?Q?0VDQ5y34nHrSeDCcvqfOSm0/JKJ3fXXxDgWn1wD2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a02971-970d-4c2d-a459-08da9d15bc34
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 03:43:10.3474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bp/1yAHf3itN9QKu7Y/iied10GZJF0CfnfqvMDApWcg+DTS+1hcv3tO6gIZtyutso3CYi4ILSuo7UIuHyI+G2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663904599; x=1695440599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ABzHG53Og0z2x+E6X/C5WaigJ3ShWOIqYA9Ae89wD6g=;
 b=CQy0cBlTDNVZLABIeRZQie4N6lg9o2dwGkd5Jiw/0P2fHRKd+7ihh0RF
 nz6eFxsba2PycWc0ApaS2KH1d8phrrVXZWIDaDnGrq4FJ6QmLhH/CvCiO
 gQ5nYwc6X32ALiElnmgrATbUAHSIIPfegwAUmoLjRIjXFbXo/A3lYhGgw
 d+V/jjmRKphoQm1kXW2s5fqxxD7dPGefecGmsnMSGpx+NvDp6UxAHj+H9
 qBG8K9EUjrV6Qk2dSjOi7My5vneYThkJ+VUpJJUYXZAjvRQ8tmTnMZyKA
 KwRCKaTdSTFQ2IPp+ykdI7XWKz7OjC0mYEIq3npKvV3E9jQoAzcOS98v7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CQy0cBlT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 2/5] ice: Adjust the
 VSI/Aggregator layers
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
> Subject: [Intel-wired-lan] [PATCH net-next v9 2/5] ice: Adjust the
> VSI/Aggregator layers
> 
> From: Raj Victor <victor.raj@intel.com>
> 
> Adjust the VSI/Aggregator layers based on the number of logical layers
> supported by the FW. Currently the VSI and aggregator layers are fixed
> based on the 9 layer scheduler tree layout. Due to performance reasons the
> number of layers of the scheduler tree is changing from
> 9 to 5. It requires a readjustment of these VSI/Aggregator layer values.
> 
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 35 +++++++++++-----------
>  1 file changed, 18 insertions(+), 17 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
