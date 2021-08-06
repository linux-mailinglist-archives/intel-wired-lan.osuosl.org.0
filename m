Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BE93E281D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 12:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B52CC83B0E;
	Fri,  6 Aug 2021 10:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QRGB0fMHLcMy; Fri,  6 Aug 2021 10:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B616283B04;
	Fri,  6 Aug 2021 10:08:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 689A61BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 552BB4010A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWHPLFZvOzlt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 10:08:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60159400CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:08:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194614795"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="194614795"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 03:08:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="420131396"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 06 Aug 2021 03:08:30 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 03:08:30 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 03:08:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 03:08:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 03:08:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JTxMQc3tkrhoIdcwO/eutmPvQXr5ycMyZO61iryBBc1BCe8BPg5GjSsj2jQK/UHmGNYa2sSv4EhLEeuf81zClalC95nEDzzQWxPEtMABiRS9e19RnRvLMveRz89UTn/A1BYlTXixMVTln3QribIw+biLx+IpSp9UhyKL16thxFaYutw9v36Cku/282vdnjPvE1frWMjziz7I6Yx9NH6gKqeMA4DM5gqr0X6MvH+bmE+M17K4rkx7wB91S8lV5IIKnHjG0hEW5Zk9GEjGHwe++HrEDFJyr1vdkHFP2BBuL0bdIcbUZi6oJRlO9oOQs/9S0oQllRVj14d1rMi3MMnkJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VJYgsanYLVJb7HQymEgkFRBTfQiScJ5KDcKtU5gNZcc=;
 b=KfhgtvR7xKNZSWtbTRNJWtJ3JnNu2Zsz2PYocXENxy9UUWWq1u4gftpcqYkMamvTNKQYKWKk+KHw0aGHDQaXulSSfHipvtapLQKgrsxguAfGHYME/GPHy1X53wnyTNmcaOnQ3SNows6mgqlAaAh2WAmLmwRItAF0MppMY8fVf9vBqjdI7H7waXT8amQQPUQA3+M0lqRhAsa5yntef/YSd5Om9RTr2EUJ29OaoD+Mgd0ssEhFE5EvQ3JdYhsKmyhlmmAFiezozRYHvdF9e7kBxcNFJz1X1N+J23LBFNvFK9+WdnNWm4CepN8RcC+NePtEdq8ZZ5wv/dRVukCFsmfsPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VJYgsanYLVJb7HQymEgkFRBTfQiScJ5KDcKtU5gNZcc=;
 b=a66MAdyk6ZNTIslBi9CFNl+V9JlCA6blxDY6QOZAFiVkm/t5EYSuAcN+JO0nBe3t46bPI1kJLoW2DZLhhAjkAcYhoHbHJvKguTe+FbVUQ0g7dn/E/QP1CGdxtN5A2MkLAFGeXiAsALo7bsrMCMsdeDRA4R9wTGI6ubo8MNLnrzM=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Fri, 6 Aug
 2021 10:08:27 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88%8]) with mapi id 15.20.4373.026; Fri, 6 Aug 2021
 10:08:27 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 06/12] ice: allow changing
 lan_en and lb_en on dflt rules
Thread-Index: AQHXaaudHDkD9NOdQkeaWIAfsGYZyatmgmng
Date: Fri, 6 Aug 2021 10:08:27 +0000
Message-ID: <MW3PR11MB45546785FBB2DA5FA8D783209CF39@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-7-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-7-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fad8bdd4-0ff6-44d9-691c-08d958c222a4
x-ms-traffictypediagnostic: MW3PR11MB4618:
x-microsoft-antispam-prvs: <MW3PR11MB461803681552B0A942C7B3BF9CF39@MW3PR11MB4618.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:525;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /lGYMAWA+H2GLgwzi0MAXrViXmY4KstrO/x1xgCf6dq2cpZv6sy0r9O5etLK3xR5VT7Myql4Hf1OX+Zs1XDZ5OFQeu4EZ8GS25b8bXNRwS1FO9eBwSwrScXLqcUCrOUnWvW2zzK4YBNU9kP/BKb1W53sAMaDLJdhfrmhp5tn0YfQLQq4tmWha0sYELgi6X7d6z5Yh2u2afe5DEt9SZx6hiGIR8aqC8MGUcQMofOmpcOeUTa8bB+p7RA7fAI6ZhxwALjQXB52eZSfdRsPtB0JclKPSx8+XbXC86buyq5lRf2GLWSjJd62zKBWtHKbuT3eaMdtazhk0dcd2EH/Zo5eYODG7jc0YMQCHxfXvxMUzErKH3A6Q8qh+X6LHlvwZXfqtcNt2j+bDuyrjXyY4E4wJfUWj3hl4i/gEM4k8XTxx3tPrKn6Lq/tSSnPomtmpt+PQtKJmr8aM8Bra6eeMWqkZCcZhJQ1nhZfkL3PVn54LvdngWcBoQo9r7WQmXo3SVjx/+mgcWHLwWyWvbWBhRXrOjtbTHEtQGy1xsK3wUEgzIpUBgqdip8au7rHQyVyM/IN+kKQsbqXIWGxi6prR9jBbDbXfAHzf+CV9UTigxD4bIeIAooECOMYRi73gATLplUpMx01X2n3+a5EEcWLTn7uGSDjvE3G7VO5YEF+RSGLpGIruUoS2rjwx5hoEn4us2PfyryxJiqwx0rJxmEu5uIaFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(55016002)(9686003)(86362001)(478600001)(33656002)(52536014)(8936002)(316002)(110136005)(66556008)(38100700002)(26005)(7696005)(5660300002)(186003)(66946007)(83380400001)(38070700005)(71200400001)(64756008)(66446008)(76116006)(6506007)(66476007)(2906002)(122000001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X19RIXhFSDqEfxJNAzSpel9OTPsT7rLnnDdylvSW3/ai+cDmAgnLLpGNduKf?=
 =?us-ascii?Q?W8mJukcUo3n9/6qla2VFOTllw9yTF9cnyFMCoj2cPBeZ3YWOHN5+DlF7PCP/?=
 =?us-ascii?Q?R0HMYYzJr6AWbt7Tcy4x1j0ZRzjHhsxzpcn9k7v4oEAC7msGyaToQ3npf5OW?=
 =?us-ascii?Q?BQD3vbrQW41cP2r6h2sHa0chm1+1eXsmxMe2HiN9K5is3KbbvHDikjuzLJ32?=
 =?us-ascii?Q?OZM7TF6LqsONjxbrlcK4KMAfxW+Bpdd8j/dURtVusHG0mA3uhULt/zeqUqYm?=
 =?us-ascii?Q?jjdNskQp/czrtBG/j9/B6cEds5g6egYf9YvxNuGtfLI6maKTRlYex6gDHg8A?=
 =?us-ascii?Q?T3E0Krd+RrPUpEQKJqqt9IT0uBwufrc1qhaVOBVEPpNErbb29FSiIO4e7d2W?=
 =?us-ascii?Q?+iRceydY+QYj5aj3qWbIHP5mcf4lGsjhavCLmUYn9P7ymojfy9bBrtAfJayx?=
 =?us-ascii?Q?7Z2zefSEYuAV0tvZCN0Q5DR59zRFoh2c76HxlkhkDgCEpmbI8Nrm4kC/vQec?=
 =?us-ascii?Q?X87FSaRM0dd9rQhdta4qBhmvsjnx0NHe3eG7JdYPI/9gqaG5yQKqtl9Nm12F?=
 =?us-ascii?Q?zR/yoWZ/9jv49pdPP3tT75X49OBAHWD54SfnWqSzxHvnCtHu4Lp8IJ/Q4hQ2?=
 =?us-ascii?Q?JE8E79Mr0mnP6FSTqDxgf4ZZcXZUgoY4rCY8Ey8Z0X6e9nNXbXs0OHtMUAYr?=
 =?us-ascii?Q?AjAY2cny34zpUgS2ifvnmglqUpIuB4Y6Wys6bVRQea+3Hc2hwHhMU6Um50Ex?=
 =?us-ascii?Q?YP0VdrbaXR4To6ZnzP2bEDml869JjqyWNoIQybG0tpe7/eks4SEpBXWn7WZ+?=
 =?us-ascii?Q?Dfp++3DMFMrymoALeTXWJ20Ttyrjyrklzf99quruuVcvCAuhP4Is/uGijgCb?=
 =?us-ascii?Q?ikUFMXOx5zA7ky8BBrruZ7AwZ8myP8RBHTE37wdhaQSHSxS+JQhOc5qhRXLd?=
 =?us-ascii?Q?EgBM3XoYV6NSBVm+siQgxnec60YkskV86JgFNAEmTGr76kKdtY6PHQp7ikG7?=
 =?us-ascii?Q?Nmj88NQXac8PZKbc8ia3MCmkiT3YxgrXghiTP1Klzs92ZQPyZ30UX1FrXXzP?=
 =?us-ascii?Q?PrEc6U2ASEXNxgjoLjjf3ozVU3reW2Il2elLqNz7zX/Iq1hKaHVwmUwe0lSG?=
 =?us-ascii?Q?+R3W7C8++n46NgFdQkqSregFmPG5sp1+p++t8IRes0HaU+R9vzPJYyv/gTt8?=
 =?us-ascii?Q?whu4RGeIA0uqh3FooaI6Jk/2kWYa5ARaVCu0KP9Vd319jpcb1osT2fytUn+0?=
 =?us-ascii?Q?J6+bse2QZPDL/95fBSrAf4u9BVFQ3QonFrNPup62NL5G2v50w2eo0XrtZziD?=
 =?us-ascii?Q?cyfBG1yucTMWc8aASX+IgDuV?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fad8bdd4-0ff6-44d9-691c-08d958c222a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 10:08:27.6680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N6OXymPIf0nz/wM93JlrFmlPMduCrFUC2Zvh1AuXL5msYziYcKTZiLUS/hd1YNgWv/QNStDpPkY7tMGp49A+FcH8HbqhIy5i85jq3YlgheU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 06/12] ice: allow changing
 lan_en and lb_en on dflt rules
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 06/12] ice: allow changing lan_en
>and lb_en on dflt rules
>
>There is no way to change default lan_en and lb_en flags while adding new
>rule. Add function that allows changing these flags on ICE_SW_LKUP_DFLT
>recipe and any rule id.
>
>lan_en allows packet to go outside if rule is matched. Clearing this bit will
>block packet from sending it outside.
>
>lb_en allows packet to be forwarded to other VSI. Clearing this bit will block
>packet from forwarding it to other VSI.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_fltr.c   | 80 +++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_fltr.h   |  7 ++
> drivers/net/ethernet/intel/ice/ice_switch.c |  2 +-
>drivers/net/ethernet/intel/ice/ice_switch.h |  6 ++
> 4 files changed, 94 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
