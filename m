Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC307E6832
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:33:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F28E612DE;
	Thu,  9 Nov 2023 10:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F28E612DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525989;
	bh=vaz+5UO4ZEth16Iw65IZLvhaKDJmhpmH6TgPj7rC+rc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xXRAvYcywnCwZVEsLVpF8RRo83NUWL2hxjsRiXYWqiJGmrt2FgYgu7YpanLjvPB9R
	 4Wky02pUqCYmXooKCucVXNjml01FqRqQ/xehHgWa7AK388rFf9/WIqfs5FjEJr3DbS
	 CDDXVdokl4ejlr8iCYXMuuOki4RHC4o7EOe5puZEXzdslEb3F0SKUFkJsrWd8AnCeQ
	 ykxzWP95Kc4tF5ftjjqE0PYdqYim+py7qbx+151ITzlvPqky1JB3isLVARJjdjF8GD
	 7aOTkyScve47yPSBlS56RMGpEcqTe0R/JETFd3py0XDOubPYW7EaK+YdK58CtV5PPK
	 9Lj/zkO5o5G+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dpRtKWDVLoTF; Thu,  9 Nov 2023 10:33:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 253BB612BB;
	Thu,  9 Nov 2023 10:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 253BB612BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A50321BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77CE141DE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77CE141DE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SavKm4FAzH0q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:33:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 909B9418B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:33:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 909B9418B3
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="369292449"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="369292449"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:32:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="739810214"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="739810214"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:32:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:32:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:32:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:32:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:32:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K53NLZs5HWLFU8xeSNwKIwZQiw7WJxBscHqUA8TAgHQdA/LGd11oLlQYybl8IHRTVE7J3+6Ezfi3d/HJVdtztF3cVegNZovjBVKf0Gl2IY+KBFG4Vd+BpA9KWQglt6gEPex3goT/gZPbrpdJXEscCMu8WQgg3YFKgnKtJ3ltia9pzDIQS+LFWDt1lZVcAB3fbdegZ2gmf/Yw/JkMd2llFA5tufQgisBq0KEre4QAGGKmjk19dplOq1o3tPfRVPyEX32txwSe4UXn7cxWYRrSB0feM43bPmKfrcWqfm4bPnrVuLsJmWZPq3XeZZPBD3PD6TzLunZ9t0fUPg5yl8kMsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qqKOTQ6n0A447fdnnCZ5kR479pn8+j4f4T/ZsfxFkJs=;
 b=Irb3TH7py9ivn3zRUV8ZCr9R0rRf7qgbgf8w7jW3IEPp14pHYLeOotW0ry/jYLu0ds0Otl0IURXqp4+nd7f9vVkQe2nDLsTGviptqQqq1vg+5gbK7VStjejTnCJ6juBaZoUHIpLvvnWDptwEt7V8k0vlCnfy0HyZvfVozzZLAYSZsZxD6S6r+5J9C8zGMvddz3TlC/rrj2cX/NWVn4xp6sWS4Bz9UgPYWO0vRo5ky+yXL+HdSVe8/q1GMC8bjRdcYYFBbFCN7IG64yod8ptqeDd7H3pCOCWkg9rWsjKOf93t/FnZRCCrzpQus9GFsJ9tRo4hu2Uh4wFNjXbeNht0Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:32:40 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:32:40 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 15/15] ice: reserve number
 of CP queues
Thread-Index: AQHaBm5aaLqn1QsT80C3IsNcSsG0h7Bx4y0w
Date: Thu, 9 Nov 2023 10:32:40 +0000
Message-ID: <PH0PR11MB50132DC49D9B5AAF419764FD96AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-16-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-16-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: 4c30bd4e-d67f-4382-9cef-08dbe10f3384
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i2P6rC6tOiZgDVyO2zLXCycd/kDr7sVnweFbQRrdHZgt4b5T9VsXYQlWMzhve7DxlwklXmpwMulaMs5cFUZRq9C0lRAzm57JAgrOxcTZ2/Yp8pD6PtL7ZZh4c3z7hFLRpvDWy6p7aGrJuhKOGdu5lwfpdY5rWR34kO8KRBLLo5AcqhA6jK48DFXmhK8/u9pzcF6oo9xcqbJPN5qclgqsriTQtv5bOkN3s7qUWP7FsuaqFBnBaMdwydY4FqMvrukWPCgw0cl9uN4TNuq/NpZvBqJBgLMPTZWkCr/rAMmtZd5G3MFM+vy5Dp0IopyVliygoMdUhMntiXFZJ9xHxfmy4DgX4w4MkL4ipqWciZ1nwMbl569FJ6S1lnDvwHAOsOhgCXo0DS1fZz8Xid/N6Aj8JIqw9FqCcVVUOXrbCvx5MMkOTBdqarUDBRu6aSYR2WjOdkks7aH6f1DaqUnST7T+a1Qp4+MOqwwxMqGZyJLSgi8Ccy/HBLYntSg6heYN0nh4P/rvZizecjrBVdZVAMEUfTddocqINVR46Fn+bCzGJsDCXTo0oh5g7NGmFFbA1ERsjQov8PmRtdm/VLZ24J46+Nv7H10gkkRRnrUZAi3/DFc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(66899024)(38070700009)(33656002)(55016003)(83380400001)(316002)(64756008)(54906003)(8676002)(110136005)(52536014)(8936002)(66946007)(66446008)(66556008)(26005)(5660300002)(4326008)(66476007)(2906002)(478600001)(9686003)(41300700001)(71200400001)(6506007)(7696005)(53546011)(76116006)(122000001)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CwmxvVamB7HuoZ3D7v7YanJqCzy+txCg0Vtm/u47qkfeGSkttM4SOR1XDK6h?=
 =?us-ascii?Q?90VAtx4W14azPHbxi9wPbpcG6fUIo0a+m/8j96MOY64f6V9oB1cD5LIQkKTO?=
 =?us-ascii?Q?8a61DZqYk/iC+C903TiReVAu1zB+ZQssm2qd3zi6fTbhX7N5D+4mZYKT9Dh1?=
 =?us-ascii?Q?u4zyNxv8eFdt7FKHtpIeNQJlibk0HzWHZgKrXM5FJhA3kxzJh2gEnUqRcFcS?=
 =?us-ascii?Q?fd6iq1CDJ2JzAeQ33LUq9wUwdXy2lAqb9mSqtmFExhMVVAnP/tjf5ig8eR5y?=
 =?us-ascii?Q?B/1P1LE+hPZad0ZdUhu0/nPAIntdAoZON82JkhC2odEdjtE4qSh628+KOrlV?=
 =?us-ascii?Q?2vJzQKHHDM+JujTbXakdQV2t9Qll3aj8pUSXgqxT6OVGOd4bVnD4+G9eFHex?=
 =?us-ascii?Q?U2yMThoW9p5dwl+UtFqJhV6dHUBLvz/qzX3BM+WeCLCsM/koK895ErVDoTWJ?=
 =?us-ascii?Q?4dmbB7JYXNESMfj52islfdD67YePgcbx+z06XZWFGoc4yGVhp2xTavo7Txmx?=
 =?us-ascii?Q?SXp6uZcK4KrmQcOxg9DzNY5bR/l3PMO//ybUPPluL68egWYJabgub3LDqgrB?=
 =?us-ascii?Q?0066sqkXuWMpDg0vm+Fl000aGbOju4xgjJeChfbVxr0h6ATcqDOGZej+yTg+?=
 =?us-ascii?Q?xmmPZ9WP+Mz5sbmQ0sqTdh7gRE+UOEvi4sb1XT8Kh9Ef3TXdS34TF73haVT/?=
 =?us-ascii?Q?ggYu7VNkIDJR12n51PB8N8ja5/Gof0xI5s0nJ+M+a47ObskELRj46K+A7sjU?=
 =?us-ascii?Q?RY6hZuny7zlq/EsnmayyCyWQ/QyKCL+1PIBQi6rnokx9THq7q3XKGsVuNk7r?=
 =?us-ascii?Q?wto0xhaLk7fcBiSJKwhsEDXRujXcjaerB2M1CizbCghEZzIY3F3G1H+jRt8G?=
 =?us-ascii?Q?vI+oBVrTBzzgNTWhKL09ezenPe4Zo+d1ycXxOxE9orneXcIgimc0oAeq/ND1?=
 =?us-ascii?Q?HFptlQu4Qj2iUH3jbA//vA76Tgb9iQtAWe+E/p5rqHjIM3nLBmdboAaJjKxn?=
 =?us-ascii?Q?liWkhUYrzPIdj1cki79gxnVwlBWDEK0WurUI73rq/HhKRjOzLgqtBV0H7n4o?=
 =?us-ascii?Q?Mw0PsQaIBZKmHFdeA0EDTYAw/hW2Ri42yop5dH5BlbXDlQpFl4eBdMewJV5S?=
 =?us-ascii?Q?5/Kjt9mkqvLpHOdPFmX+BBhGuFhgm0GDbvfHDY23gXnHHlE6HvJ9WZERCZZH?=
 =?us-ascii?Q?/9Jj71v36xotkcRlYVBIpIG0eC5wHMYPDL8gzAKH5/KruRoKsH+7FwbQ4Pvi?=
 =?us-ascii?Q?6knitvD7SBBzp1E3ygxr1eJxV5GjI8fCZq3v2ydHrzTfGfVCI59godfM4Hya?=
 =?us-ascii?Q?wUMrNX6X/3uJCUzaIjLqLJVx1UvF7bwYLxirvGJirZUEpKI860vc6S5FZQae?=
 =?us-ascii?Q?qmZBWYdvjPSi1ITmIHrYgBWLN4PDvbxrdQiWJriy1jqoUv6tGF8E8dWYa7lH?=
 =?us-ascii?Q?z2LvHbR62XT8uvQWaTijDlrMXsA3L2e4A5IOrdWkoGYszJ1ucczL/YlcGf55?=
 =?us-ascii?Q?gcU6IZSGtaoZeQqRIGF31+E28hJoFU6yGVa6to5iqvd308BytanXK55e7JQ/?=
 =?us-ascii?Q?xpHpcUHr3OPRvpbluDh33CkjaxRzUggai4naYKUm6WdUN5cUuT4dp53MmPRN?=
 =?us-ascii?Q?9w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c30bd4e-d67f-4382-9cef-08dbe10f3384
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:32:40.7715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V1aBpCBJBJY4Pviux1/xp2BMw1c7YcvcrjYRSm6XY/y7Z9210gSebpUNxYEcTtR/dW0nP684Eg/HNG9C9/geGwUkClzjkd6A7eKHwzrO9fQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525981; x=1731061981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R0HP2h7LAzDCqdP1/RQgKyl9YR3hLFdhZ+rv1wFN7LU=;
 b=RnX8ICcnHp6WtCwyCSlMk5UjDVREvCdYVi9Y0sOoX2cJu7wDZmW2ms1r
 bwdxMz0gkpa7yJc2DWddrcuH0TD3kIOZ2pmCtZ9uYgHSLYNcozGhBXheI
 R/8MgNJbgGsUrs9Q1fcdLZeLmXr54NYx8MZh4YCJSwmCJ1yafx17S/GBk
 Nx0RGA9GA+sitvt0KIaGhKHK/lZEhI6iGQIjgp4KLPkuiQQXsM4h5Fq8R
 VvhFbFEeXYyT1MPHIm+AcE+5DgkXNQA/X+FoxW6u3NC9Vr4Y5+QralGpW
 O0XxDv8OfuKo1Qpi2B1Q93FKdERNQ5WsUhKKlgZ3FwCmfWX0wwjd/Fzyx
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RnX8ICcn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 15/15] ice: reserve number
 of CP queues
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 15/15] ice: reserve number of
> CP queues
> 
> Rebuilding CP VSI each time the PR is created drastically increase the time of
> maximum VFs creation. Add function to reserve number of CP queues to deal
> with this problem.
> 
> Use the same function to decrease number of queues in case of removing
> VFs. Assume that caller of ice_eswitch_reserve_cp_queues() will also call
> ice_eswitch_attach/detach() correct number of times.
> 
> Still one by one PR adding is handy for VF resetting routine.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  6 +++
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 52 +++++++++++++++++---
> drivers/net/ethernet/intel/ice/ice_eswitch.h |  4 ++
>  drivers/net/ethernet/intel/ice/ice_sriov.c   |  3 ++
>  4 files changed, 58 insertions(+), 7 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
