Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD6540B487
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 18:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86A0B402D8;
	Tue, 14 Sep 2021 16:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xi1khujCbgjH; Tue, 14 Sep 2021 16:24:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F320402C2;
	Tue, 14 Sep 2021 16:24:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34BCD1BF42E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 16:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2331260676
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 16:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7c-0ufU4X2u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 16:24:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E5786061A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 16:24:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="220179332"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="220179332"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 09:24:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="697732569"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2021 09:24:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 09:24:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 09:24:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 09:24:13 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 09:24:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N1NPZqPXQ+kvI9ySbE8tygTuf3sz+aM9/R8Hoq+ABp5SjJ5BFM+AUuGa4HEQJrc5rqBUSHFZLQIoayjit7u4xvuH2S7DRIARwmKsOI5IMmtlVVHk6uAcniiKTcgKbPMzrobwqvymZ7FwhZnTXKOI2QpXYycGBiNDYR+R533eDaCgQEzB/1UdPrrNPiwNPmuW5j3Q4zw1LRgMQv0H+ukqCAeZ8Wm6iSJ7lmWcFwIxcqrW3wVZuTIfvPrNo6lq2e/Pj7GniHPkuS4DWDulkdaSk5NSsRfdeL3rmbC7UqrcX9AUUnZkGF/UZIpgf0KgAYun28oWgx+o3oG1ZiE17imuvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=x6pbpsJj76qC7mKXZvd6/WoxrieCG5lfeik4yUwDcHg=;
 b=iUoYwPYE/M/s7DqZI717qw25GicGCPjOAVVIpcD5XeqsOfp55GpO25SSfC4A3agjCdh1ndK33FG1XQs6Y04TXW+4kakmQByOuaJExH+Lzr0MI23OpRPGf3+TevkA2wu3dy5v1PGYxfkYs6CR83UmJsahoBac0ImzmVde0YRtNEvx18I2WO+R9EU1r7iPMfF/t6vung66o59myHHFwqN2rWV970RMGW+raRILlh8r0uHR2sXJKiv/Q2728GSDEA/u1LCAa5rYXM4cl1ibkrYBS87HVfaT9C8EAwvKZVGztLUAuI7dzBIRJTd7q6m8+CJzE96/4MLS1SNERLpKeNKzmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x6pbpsJj76qC7mKXZvd6/WoxrieCG5lfeik4yUwDcHg=;
 b=c0kMZaX1ym3y8hRQr58CZbjsdkOFpO2Kb+7WozzzaYlPk+Q8JJw3MQOknNySSrBT5Qlwp40ka49pgTAqTQQTD1G8j7WGswjc1DSAYXT4uoljHD5pXo7c4Fu4g+/q1sMostTUXa2KJFVOgtU39HwikrErKey6RFS6jIwy7H4FzO8=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3430.namprd11.prod.outlook.com (2603:10b6:a03:89::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Tue, 14 Sep
 2021 16:24:12 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4500.019; Tue, 14 Sep 2021
 16:24:12 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Fix newline at the
 end of NL_SET_ERR_MSG_MOD
Thread-Index: AQHXnakrpxkGehiM1UuM3ibitsX186ujzkeg
Date: Tue, 14 Sep 2021 16:24:12 +0000
Message-ID: <BYAPR11MB33672426AF0ACB52DC799AC4FCDA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210830141220.5547-1-wojciech.drewek@intel.com>
In-Reply-To: <20210830141220.5547-1-wojciech.drewek@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd52c88b-3af7-4b8b-5a56-08d9779c1666
x-ms-traffictypediagnostic: BYAPR11MB3430:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB343064D0ED1FFE07C5414327FCDA9@BYAPR11MB3430.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IJMTUrrvePF0uCb7UjLwNgER3/bMrJ5ow/6ZyHrURJn0EwajGF/rc0LnJe4xNjFJgFO/lIbXj5o6u7gJjevAQ0EEN1NCrVT2ErNVvZ6pkCbTomT+55lbZBxduNF7v0XKE9DQxnP/OuXQNGoCH4XCWdKKxkQidiADRJwaNdLied4/9fL19vbOsKTOHVQ/P3GJZSJc23z6dEwt3SqTEVW8oJVHNBUsteO5zt2su60dwypyLgUY/KP/hVpnwNosZbD73Zw4A6l6DOtq4bRRUMqfwIO5V79Izd54RKkQlFg95t3grVAQQ5x1/ugoF3+SNN8X7drhsLwBp11P4jQo799QT264TtWFwkI9xdpj4UNxjjtqqbgdo+miVTAZIbpJ7NqJhb9y5issPnZZULFkqA/hmii2DMTTY9mZHMmqn5NeD9w+izdfw1jbjnCGDC2mCRvCY3evqJnBUApELSXvPK0eRFaP8iymVEZuuwmVpg8DiGC2gijIO9l9NsqYTQsE01kUwrJKNiNZrAGCBytVpuYceSNSPt+tqTFV0ExIRGsxqfcVZSS2w7FWwKpN9z8RS+OBa9DDzoafB7daeUrxkcx8CkX59+5KqbeHLkCEw1uia4dQMe8ZM3prWzYvS4EqgwNLe3wUwLqSG6yAiNvS4EiKGqNTa8ZHIw5eRPZPtewdGykLoFE2JBZGpgc5OGb9k2/j1Rp3p44ugsldFWjhR6Wh0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(7696005)(5660300002)(122000001)(66446008)(64756008)(9686003)(52536014)(66556008)(76116006)(55016002)(316002)(66476007)(71200400001)(110136005)(66946007)(26005)(38100700002)(53546011)(186003)(6506007)(38070700005)(33656002)(83380400001)(4744005)(478600001)(86362001)(2906002)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g5RMJvu6zmz/9qc5AieQuJcmYRzH7rMZLym9zzGD72FgKNoWaydUbtHlVz5e?=
 =?us-ascii?Q?pLb2Xx+7rhDlXrHhtKWOm9cVYzB1q7/6RJ8MM+JodexpzakDgnUuDGqhRnrB?=
 =?us-ascii?Q?vS8DPhIHaDnQ0B4qFlJr72XjIIy0BCaDM/tEVnU6X9PvG7CvTo/EGmw60vvL?=
 =?us-ascii?Q?yGAOdVjW53SKT0lWzx/ytpj/MIj2bltL96wldQgtalinaVtsmXnOeSLp3q6w?=
 =?us-ascii?Q?eCuMGsyi/Vs7WavF71AAAmUeTOaKL4UHKthUKC9wLian8u7oZIbnHbMrguQE?=
 =?us-ascii?Q?ujXn1Q76rVqLc8hFzDDS2+c6aVY79cb+D2gs+oSJF0eGMsbywnygUB52gjE5?=
 =?us-ascii?Q?x4M3HSFD25WFN7K+E4fVRXBqQ/cGA+WFeWSnHl/ZbgNq7Kq9EPi1AamWJf3e?=
 =?us-ascii?Q?LcIV8LOy9JzNBiy7zSSngbPcsk9UBK3J3VrBC4FYQKxen9AnIa+w7X2MQOb8?=
 =?us-ascii?Q?ufYZ63oaM7Oyb3kXqhkU9fzbVIx7/bjdFDvicRZ7s+81cDLP/UmVEVCcOs8f?=
 =?us-ascii?Q?7xflcQCu/He87mkzQnmlH7Cq7DOFoT2Q37eudt7SEMCnY+nmsWuRoFew6wkN?=
 =?us-ascii?Q?DD9eHL5h4QtF/0QpCoITTiGrJ5Bi7cQxrVSs6P/G17FlUQ6pGCCnaf01hqAj?=
 =?us-ascii?Q?rvuRURgiJlc/y91MnGBQ76/axLrpzT0F3vZR2mTKpKOU83pB94dQtzn/3vIe?=
 =?us-ascii?Q?7iapxnLXDdgsIuxMcypF319AaNDR7D7wUoJZ27iOBcOkVs2NWB/vrbOe2S1b?=
 =?us-ascii?Q?ZoNX3v0IjTulW5PRenlPuMvUKfwLzgnxmeUKpUi0Q2lIkKPmonj4EW7VNL/g?=
 =?us-ascii?Q?mNdXBZ+AEQoS3OG7928mpdPQ2O9XQR/8rJUY6mFYsa3b3ttS58n0CYmEC8jG?=
 =?us-ascii?Q?pt5Lx9OLgxmcqWXw2sm0ywBI8pXwJgaC8+vCD1dDVumcK/KLJN0PR8PgZ8fM?=
 =?us-ascii?Q?AZ+hXPlOe86AYeoCJkuTuf12EbfQEMWliNd8hFl3HOSWJwYlzRwu3FwoC7QM?=
 =?us-ascii?Q?4JGGd80R9yr2ajEpORKpM3bGMjBmx6OJdqESYl973kQV8ktnNrA2gU5Ybq8d?=
 =?us-ascii?Q?V9VbJO5kOlXyHttSr3xiYzNkz22iYdb1y6wfqbvaAm+KZcBPHbd8dq6lAPNq?=
 =?us-ascii?Q?L7uFauXzmTkzw8IOnAbmhAiVUPypPfY7dRK+SC0+CuDOJ0dedQgiqkgBLVqE?=
 =?us-ascii?Q?cOHVPVJDFKAmF7vpTbnvY8FvNjWeh1sFqanzATeOEzh9kJTdFsJApMN+QBDR?=
 =?us-ascii?Q?RQiYrLvX2hlXaNoZF3ycPOO1Chso3lU4FayMwj+ki+vyKevy70rMe0mgTCA8?=
 =?us-ascii?Q?jQn3O56xNsTSWVmWtKXBm8Al?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd52c88b-3af7-4b8b-5a56-08d9779c1666
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2021 16:24:12.3076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TDgtApN9ugRwO+cJ/zEREWZlxpW4srwn+S6R3d5xxc/q2RBA1kwP+wgnwZKolFVQgC/Ex+PUSvzuahOoZ8kJ6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3430
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Fix newline at the
 end of NL_SET_ERR_MSG_MOD
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
> Wojciech Drewek
> Sent: Monday, August 30, 2021 7:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Fix newline at the end of
> NL_SET_ERR_MSG_MOD
> 
> Newline character is not needed at the end of NL_SET_ERR_MSG_MOD.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
