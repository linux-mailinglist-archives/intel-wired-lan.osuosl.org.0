Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F11B1350998
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BE98849D3;
	Wed, 31 Mar 2021 21:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G2IMl3DV7GgC; Wed, 31 Mar 2021 21:37:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA976849D1;
	Wed, 31 Mar 2021 21:37:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4AF331BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 359FB60B86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:36:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pl64Z4YdJROc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:36:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D70460B82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:36:57 +0000 (UTC)
IronPort-SDR: Rn8WrL7xc5FRY2e3SaVwnRWmE9EX0FWQTw+otFnxQufAetZ0k8wpJT7mteImcOV/ieU6QP1FrS
 LMlGzGGV4d/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="179629407"
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="179629407"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:36:56 -0700
IronPort-SDR: MP7LaIgNSwkN4PBq5vp9pmBNDNQTQUbxfxbr6o/BvV9NK5nyor1yh0DTkTVA657GMadiV7yU4K
 mZq9PTubzhGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="394211458"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 31 Mar 2021 14:36:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:36:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:36:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:36:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JuLMIeHlCitg59dPIoLtgDkeh/8Hnr4E811DtxwyM7D2wf5BwvYXWo48jXH8n2MoWf2k+gvarGbUWtXTFVPcPx007Z2MGFvau0w64HQ1emjbSpgZwztys4+r5Cf0zfzKkqNhhfMqIchskFpp9I806IlENJ1oqJee2E0zdaysdXE6z6dxs7TeaJEXRNtNvSHU+bC6W9wZZEl5uCBz1NJxnWVd0apv53nL/f7jr+PLGwjjwon4+YFBfj9DcjTZ/jYyDNmcySl6oQe+xc6D0p+Z49R0ruRz0V42VUa7uZMMv8hvxXa6Wd/reUIeNMcNkOGgjLaw/JmhG3Cw46hy0YGvXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=li67Go8V1CCvJgzDOSyhldWDRSRscW8AklgoAzAjaJ8=;
 b=muuMnrRM7VNWdLxRrU06NywwpqtPyjqxXQwg0s6d8/bLVMdw56r0w5itAs5iC2yinTvs6sZR2L8zCZ64GeA6+jvx8Vb62R6QiBJAJfdcg773ZbM0pT46GqGVLv7/6lptyENQrZcJvk76wNgZJ59AhswGwfmefh4Y65+/4LmMb+ZXczvtMLduwCz013XC+QyKfETVNC1a29U4iweXMlKlE1nEIsYkJimmU2Zf2WjUY+t5fvozvnbIZCGfkLMYv+o9s3W2hVgXSqKUMLyFx4bKEpwtDsH0awh/IecuVLDYYITtVfx0QMxC4CxFhPBJHHvYEpT4pZM/H7Q6/LTFlPGVag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=li67Go8V1CCvJgzDOSyhldWDRSRscW8AklgoAzAjaJ8=;
 b=xRPzv4PUJUlZPmzi7GeZHmkl+2P5ubYwftk/V5ZnBs921Azf2vFGDDzYZy5TeAMg0M0tiEkc7di8myLr4OOrUnWXIotXdISoOaGs+ntCiYC2rX1rnFSIWqdKjM1l8ibGCDfWsjW4hJrW8+vydaYvzhjFW8R63N1fZohLkzqGCVM=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1805.namprd11.prod.outlook.com (2603:10b6:300:114::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Wed, 31 Mar
 2021 21:36:55 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 21:36:55 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 06/14] ice: Rename a couple of
 variables
Thread-Index: AQHXIcipXH635XgLuEuDiaxpVR+Z86qeqEBw
Date: Wed, 31 Mar 2021 21:36:55 +0000
Message-ID: <CO1PR11MB51056755063B3F49348A819FFA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8dcf5fee-d1e0-4122-ffc4-08d8f48d1aec
x-ms-traffictypediagnostic: MWHPR11MB1805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB180551E24B049765ED214BECFA7C9@MWHPR11MB1805.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A5Ums/YP+zeYm7JeOBF7pcPIeor911iu7AfkqysB5hwyQZzJLPD14ldNZwemPWXk8Km1VWbpJFu3FuaCMsZ1I8Xt3BVzVNTB4zMJFi9OOxZAZSAwfLFAC2H0SqhE2pj4KftaXZRohcqWW6J+1YXMElZJoNY9zcnpwxKutw3/xlO1RxOGpBqOfAbiUUa4sL8b5CrnMBdiaMxFnGOjoGGZSPHvi4K3UoS3CfIOXH2EOLD9cJBkHnUeZgwgSl/V/KEDWp9P4N+DztNMHDMh/6/pRI9jLQqVv/P0Is02yLlWSM4UP7lSqTALppsfg1c4bpv25lzZzV/Hh0v6IuYifKqnRyiE+lFJ2Ri6EJ3fBZ7PZltVacqIUbd5EdHs8GjSH22FLLl7NaefPo9/fX1qP/rYahbULch1TrttZoy4tM6jq34N0zoPhnkCH+bAzv0NhgX1guwxc96Y3HcBjgbVXDlx1iRmECHqS4n95ASfLdAY1gd6MvUmwg2DGiv6JHUgX/SxNfRpeRhMwnOGf9eVhCOFljE7IAf1cXn8krVpQxzMdKP4pZ9ydjmO7GVvGiu731RTeyzDcWvhF310xhbqgvfVOlrYbc39jKLlQq2VUF4NiSGvLkUZ/SUnZYCRy04+nHogufmMbGVzxhaEBTSsrvknJ55+0jvqOun02wUCBHKVfig=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(136003)(39860400002)(396003)(366004)(2906002)(66476007)(83380400001)(33656002)(71200400001)(64756008)(66446008)(9686003)(8676002)(26005)(38100700001)(55016002)(76116006)(66946007)(66556008)(53546011)(8936002)(6506007)(7696005)(5660300002)(316002)(86362001)(478600001)(186003)(110136005)(52536014)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?VZol12LCS4DGxzNIIrYioyIwA6F0IEsP9ZvAc0Pf2qaD8EjH47M6v/QN+lpR?=
 =?us-ascii?Q?Q0E1PwuboSNm7YuirDbv2stWqhNF0VbYgrP/DEZNGCW/DTFuMlonugF6AocL?=
 =?us-ascii?Q?GMMtJD1cByN/gGmWp0pCEakMLxciieVoCYohlpuWcnPp7jYYZFzHT0lyulKP?=
 =?us-ascii?Q?meWyhDusdH8jWT6A3+FO/57QoMJ/yix8MTieavXhz1x1gTSzhYEHgJkqGpBv?=
 =?us-ascii?Q?e8MzjYFTODcNiuufU8PEXGt3+3UsYFTZQW1tStn+qUknK37rrYWZNsZGy5/r?=
 =?us-ascii?Q?QPKJnAQEWVn7kXQR4Q1hysNPQfizfsVG9QLhhox4SlA046wVFv5YFJInwTUK?=
 =?us-ascii?Q?hmLmXrVDqq6Ytka54UHUVCnmJZ3TMscXQYVOF77FFDtSRkWbqELZXpx7Z01h?=
 =?us-ascii?Q?r1KG/+vLeb+2c7PWCjHqzMS9kbSwJU4NGmcpAbk5EoGyiUpRTqeMYzeeIgrR?=
 =?us-ascii?Q?2Oyh++9w195l+xL3bY5cQ48L3GI3GrLTSX9vZcGRjFz5AUI7FKO7pVcq9vLW?=
 =?us-ascii?Q?ihZvXIAUAeZb1jMbwtDaNSXayoBv1ZbAtIVcGW8zT3pzJf+RwMbKqsfbYm2A?=
 =?us-ascii?Q?whmRTE5lNkbOIq1Peb9BUgjGU0hNU+OcO+VYFQEl+tMFUGaTKhu/Hr4TEs8r?=
 =?us-ascii?Q?Wsgdq0YV0q1fkB29FilgxEMhV250aI7+MIHWCVKxsZpfnvw8psKea9Es4wPc?=
 =?us-ascii?Q?HIsSSvluzGQSgerUv7KiXS6eOIwwqLqlV28EAJ5E+kX5fe1BlgrPsrRvz9/m?=
 =?us-ascii?Q?/Xdj0e3R5FHjl9TRzl82glNJ/vaygw2wfMdH7cxr1NI1vzB6zrvorjASrC6F?=
 =?us-ascii?Q?3bn+zPAzky5AIKG4W3JzJ0JKbo0W6TROeustC/pUteIIjtjgFg5faooyOf80?=
 =?us-ascii?Q?ImByPhmmCpEF+tMNGl/brgCp5J484/4T/65VHSt1CX11iWOwq6ZYxA4AX6uX?=
 =?us-ascii?Q?P6fec16PJsErltOl5YdYh7fiYxs9P9mv9lEy+oQpbdD4LjW7yTQUosMQX8Dk?=
 =?us-ascii?Q?vXvlrFWJvO/Sy/DkZgr7lOTlDwfplvUM/qeTDr7Xxl974M7iU9/O182/dYZQ?=
 =?us-ascii?Q?8C6G/dojgLq/bb4jTe6kHoEDwgUkyYIo1xD8EcNYmj7WctRagvc1j59FVxoL?=
 =?us-ascii?Q?HBH1607IxvBdUewmL/SmD5g0828EKGZRveYiAxQU/ag6aq/eO/OR2ikUULYd?=
 =?us-ascii?Q?NTDSWKSC1rQzZiNYNUMzmyhyw0ZmsyyxeIudr5RjcWKX8CFdW4WVTkK+Qj30?=
 =?us-ascii?Q?ZBs0Qgugng/x2w6sAj3jWa0IfmN+siFdXV8x3cy7cEheDbQWs8GQ2bcCcyL4?=
 =?us-ascii?Q?RxryMigCGiavVa2ax7HA3FPx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dcf5fee-d1e0-4122-ffc4-08d8f48d1aec
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 21:36:55.1016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YZt1XAsQ72xE4oLgXGh8l6BJdyynNVxwSfqu4PDq7DXTrcjil/L7NUvYgUeP48SV17vSMg9vq4K5H0iF3FkePOy37IOiPjz/+ApIJe/AF5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 06/14] ice: Rename a couple of
 variables
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
> Tony Nguyen
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 06/14] ice: Rename a couple of
> variables
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> In ice_set_link_ksettings, change 'abilities' to 'phy_caps' and 'p' to 'pi'. This is
> more consistent with similar usages elsewhere in the driver.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 50 ++++++++++----------
>  1 file changed, 25 insertions(+), 25 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
